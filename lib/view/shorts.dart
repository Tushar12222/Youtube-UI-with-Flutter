import 'package:flutter/material.dart';
import 'package:youtubeclone/view/widgets/shortslist.dart';

class Shorts extends StatefulWidget {
  const Shorts({super.key});

  @override
  State<Shorts> createState() => ShortsState();
}

class ShortsState extends State<Shorts> {

  Shortslist sl = Shortslist();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
      return sl.showshorts();
    },);
  }
}