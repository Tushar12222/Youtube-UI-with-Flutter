import 'package:flutter/material.dart';

class Createoptions {
  Widget showoptions({required String text, required Icon symbol}) {
    return Column(
      children: [
        SizedBox(height: 30),
        Row(
          children: [
            SizedBox(width: 10),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey[800],
              child: symbol,
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
