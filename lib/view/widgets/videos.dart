import 'package:flutter/material.dart';

class Videos {
  Widget showvideos({required String text, required String nameandviews}) {
    return Column(
      children: [
        Container(
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 230,
                width: 380,
                color: Colors.grey,
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(),
                  SizedBox(width: 20),
                  Container(
                    width: 270,
                    height: 55,
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ':',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 70),
                  Text(
                    nameandviews,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
