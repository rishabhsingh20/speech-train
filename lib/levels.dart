import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/sentance.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Level extends StatelessWidget {
  const Level({Key? key, required this.level}) : super(key: key);
  final int level;
  @override
  Widget build(BuildContext context) {
    //  widget.level; //access variable in the stateful widget above
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Sentance()),
          );
        },
        child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Color.fromARGB(255, 130, 250, 244),
            ),
            width: 80.0,
            height: 80.0,
            margin: const EdgeInsets.all(10.0),
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(children: <Widget>[
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    "$level",
                    style: TextStyle(
                      fontSize: 60,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.blue[700]!,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    '$level',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  alignment: Alignment.bottomCenter,
                  color: Color.fromARGB(255, 7, 99, 238),
                  child: RatingBarIndicator(
                    rating: 2.75,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 15.0,
                    // direction: Axis.horizontal,
                    // itemPadding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                  )),
            ])
            // color: Colors.amber[600],
            ));
  }
}
