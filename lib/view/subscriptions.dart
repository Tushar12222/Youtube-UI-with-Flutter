import 'package:flutter/material.dart';
import 'package:youtubeclone/view/widgets/subscribedlist.dart';
import 'package:youtubeclone/view/widgets/suggestions.dart';
import 'package:youtubeclone/view/widgets/videos.dart';

class Subscriptions extends StatefulWidget {
  const Subscriptions({super.key});

  @override
  State<Subscriptions> createState() => SubscriptionsState();
}

class SubscriptionsState extends State<Subscriptions> {
  Suggestions s = Suggestions();

  Videos v = Videos();

  Subscribedlist sl = Subscribedlist();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        Row(
          children: [
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/youtubelogo.jpg'),
                ),
              ),
            ),
            SizedBox(width: 90),
            Icon(
              Icons.cast,
              color: Colors.grey,
              size: 25,
            ),
            SizedBox(width: 20),
            Icon(
              Icons.notification_add_outlined,
              color: Colors.grey,
              size: 25,
            ),
            SizedBox(width: 20),
            Icon(
              Icons.search,
              color: Colors.grey,
              size: 25,
            ),
            SizedBox(width: 20),
            CircleAvatar(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 10),
            Container(
              width: 370,
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return sl.showsubscribedto();
                },
              ),
            ),
          ],
        ),
        Container(
          height: 50,
          width: 380,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              s.showsuggestions(text: 'All'),
              s.showsuggestions(text: 'Today'),
              s.showsuggestions(text: 'Continue watching'),
              s.showsuggestions(text: 'Unwatched'),
              s.showsuggestions(text: 'Live'),
              s.showsuggestions(text: 'Posts'),
            ],
          ),
        ),
        Container(
          height: 530,
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return v.showvideos(
                text:
                    'Taarak Mehta Ka Ooltah Chashmah | Its yo boi baadshah, yoyo honey singh | Episode 905 | 23rd April, 2021',
                nameandviews: 'Sony PAL . 2.3 M views . 1 year ago',
              );
            },
          ),
        ),
      ],
    );
  }
}
