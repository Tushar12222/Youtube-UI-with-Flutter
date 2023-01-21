import 'package:flutter/material.dart';

class Subscribedlist {
  Widget showsubscribedto() {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 30,
            ),
            SizedBox(height: 5),
            Text(
              'Hiko',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
