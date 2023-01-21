import 'package:flutter/material.dart';
import 'package:youtubeclone/view/widgets/historylist.dart';
import 'package:youtubeclone/view/widgets/libraryfeatures.dart';
import 'package:youtubeclone/view/widgets/playlists.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => LibraryState();
}

class LibraryState extends State<Library> {
  Historylist hl = Historylist();
  Libraryfeatures lf = Libraryfeatures();
  Playlists p = Playlists();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 10),
              Icon(
                Icons.history,
                color: Colors.white,
                size: 35,
              ),
              SizedBox(width: 15),
              Text(
                'History',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 140,
            width: 380,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return hl.showhistoryvids();
              },
            ),
          ),
          SizedBox(height: 20),
          Divider(
            color: Colors.grey,
            thickness: 0.25,
          ),
          lf.showfeatures(
            text: 'Your videos',
            iconname: Icon(
              Icons.play_circle_outline_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(height: 10),
          lf.showfeatures(
            text: 'Downloads',
            iconname: Icon(
              Icons.file_download_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(height: 10),
          lf.showfeatures(
            text: 'Your movies',
            iconname: Icon(
              Icons.receipt_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(height: 20),
          Divider(
            color: Colors.grey,
            thickness: 0.25,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                'Playlists',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(width: 140),
              Text(
                'Recently added',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(height: 20),
          lf.showfeatures(
            text: 'Add playlist',
            iconname: Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
          lf.showfeatures(
            text: 'Watch Later',
            iconname: Icon(
              Icons.watch_later_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          lf.showfeatures(
            text: 'Liked videos',
            iconname: Icon(
              Icons.thumb_up_sharp,
              color: Colors.white,
              size: 30,
            ),
          ),
          p.showplaylists(
            text1: 'capstone',
            text2: '17 videos',
          ),
          p.showplaylists(
            text1: 'Cs',
            text2: '2 videos',
          ),
          p.showplaylists(
            text1: 'SALESFORCE CERTIFIED',
            text2: 'DecodeSFCertifications . 7 videos',
          ),
          p.showplaylists(
            text1: 'Salesforce',
            text2: '3 videos',
          ),
          p.showplaylists(
            text1: 'FOOTBALL',
            text2: '8 videos',
          ),
          p.showplaylists(
            text1: 'data science',
            text2: '47 videos',
          ),
          p.showplaylists(
            text1: 'blockchain',
            text2: '1 video',
          ),
          p.showplaylists(
            text1: 'tush',
            text2: '6 videos',
          ),
          p.showplaylists(
            text1: 'c++',
            text2: '',
          ),
          p.showplaylists(
            text1: 'Linux Essentials For Hackers',
            text2: 'HackerSploit . 48 videos',
          ),
          p.showplaylists(
            text1: 'Ethical Hacking & PenetrationTesting',
            text2: 'HackerSploit . 177 videos',
          ),
        ],
      ),
    );
  }
}
