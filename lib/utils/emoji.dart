//
//

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmojiFace extends StatelessWidget {
  final String emojiFace;
  final String feeling;

  const EmojiFace({
    super.key,
    required this.emojiFace,
    required this.feeling,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(13),
          child: Text(emojiFace,
              style: TextStyle(
                fontSize: 25,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          feeling,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
