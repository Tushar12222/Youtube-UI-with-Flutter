import 'package:flutter/material.dart';
import 'package:youtubeclone/view/widgets/createoptions.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => CreateState();
}

class CreateState extends State<Create> {
  Createoptions co = Createoptions();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 20),
            Text(
              'Create',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
        co.showoptions(
          text: 'Create a Short',
          symbol: Icon(Icons.screen_rotation_rounded),
        ),
         co.showoptions(
          text: 'Upload a video',
          symbol: Icon(Icons.file_upload_outlined),
        ),
         co.showoptions(
          text: 'Go live',
          symbol: Icon(Icons.online_prediction_outlined),
        ),
      ],
    );
  }
}
