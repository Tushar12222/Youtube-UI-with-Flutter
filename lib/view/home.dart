import 'package:flutter/material.dart';
import 'package:youtubeclone/view/widgets/suggestions.dart';
import 'package:youtubeclone/view/widgets/videos.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  Suggestions s = Suggestions();

  Videos v = Videos();

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
        Container(
          height: 50,
          width: 380,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              s.showsuggestions(text: 'All'),
              s.showsuggestions(text: 'Shailesh Lodha'),
              s.showsuggestions(text: 'Gaming'),
              s.showsuggestions(text: 'Mixes'),
              s.showsuggestions(text: 'Music'),
              s.showsuggestions(text: 'Valorant'),
              s.showsuggestions(text: 'Manga'),
              s.showsuggestions(text: 'Counter-Strike: Global Offensive'),
              s.showsuggestions(text: 'Tom Clancy\'s Rainbow Six Siege'),
              s.showsuggestions(text: 'Action-adventure games'),
              s.showsuggestions(text: 'Pop Music'),
              s.showsuggestions(text: 'Recently uploaded'),
              s.showsuggestions(text: 'Watched'),
              s.showsuggestions(text: 'Posts'),
              s.showsuggestions(text: 'New to you'),
            ],
          ),
        ),
        Container(
          height: 630,
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
