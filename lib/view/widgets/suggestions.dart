import 'package:flutter/material.dart';

class Suggestions {
  Widget showsuggestions({required String text}) {
    return Row(
      children: [
        SizedBox(width: 10),
        MaterialButton(
          height: 30,
          minWidth: 40,
          disabledColor: Colors.grey[900],
          disabledTextColor: Colors.white,
          focusColor: Colors.white,
          color: Colors.grey[800],
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
