import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCircle extends StatelessWidget {
  String child;
  ImageProvider image;
  MyCircle({super.key, 
  required this.child,
  required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, 
                border: Border.all(
                  color: Colors.white,
                  width: 3.0)),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: image,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(child)
        ],
      ),
    );
  }
}
