import 'package:flutter/material.dart';

class Libraryfeatures {
  Widget showfeatures({required String text, required Icon iconname}) {
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 20),
            iconname,
            SizedBox(width: 30),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            )
          ],
        ),
      ],
    );
  }
}
