// import 'package:record/record.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';

class SoundRecorder {
  FlutterSoundRecorder? _recorder;
  bool isinitialized = false;
  bool get isrecording => _recorder!.isRecording;
  Future init() async {
    _recorder = FlutterSoundRecorder();
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw RecordingPermissionException("Microphone Permission Denied");
    }

    await _recorder!.openRecorder();
    isinitialized = true;
  }

  void dispose() {
    if (!isinitialized) return;
    _recorder!.closeRecorder();
    _recorder = null;
    isinitialized = false;
  }

  Future _record() async {
    if (!isinitialized) return;
    await _recorder!.startRecorder(toFile: 'abc.aac');
  }

  Future _stop() async {
    if (!isinitialized) return;
    await _recorder!.stopRecorder();
  }

  Future toggleRecording() async {
    if (_recorder!.isStopped) {
      print('started');
      await _record();
    } else {
      print('stopped');
      await _stop();
    }
  }

  // bool isrecording() {
  //   if (_recorder != null) {
  //     return _recorder!.isRecording;
  //   }
  //   return false;
  // }
  // bool get isrecording => _recorder!.isRecording;
}
