import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:youtubeclone/controller/navigate_controller.dart';

class Navigate extends StatefulWidget {
  const Navigate({super.key});

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  Navigate_controller nc = Navigate_controller();

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: Colors.black,
          selectedIndex: currentindex,
          iconSize: 25,
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home_filled),
              title: Text('Home',style: TextStyle(fontSize: 13),),
              textAlign: TextAlign.center,
              inactiveColor: Colors.grey,
              activeColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.screen_rotation_rounded),
              title: Text('Shorts',style: TextStyle(fontSize: 13),),
              textAlign: TextAlign.center,
              inactiveColor: Colors.grey,
              activeColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.add_circle_outline_rounded,size: 33,),
              title: Text('Create'),
              textAlign: TextAlign.center,
              inactiveColor: Colors.grey,
              activeColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              title: Text('Subscriptions',style: TextStyle(fontSize: 13),),
              textAlign: TextAlign.start,
              inactiveColor: Colors.grey,
              activeColor: Colors.white,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.video_library_outlined),
              title: Text('Library',style: TextStyle(fontSize: 13),),
              textAlign: TextAlign.center,
              inactiveColor: Colors.grey,
              activeColor: Colors.white,
            ),
          ],
          onItemSelected: (index) {
            setState(() {
              currentindex = index;
            });
          },
        ),
        body: nc.showscreens(index: currentindex),
      ),
    );
  }
}
