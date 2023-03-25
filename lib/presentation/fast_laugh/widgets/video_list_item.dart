import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Right Side
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.volume_off,
                        color: kWhiteColor,
                      )),
                ),
                //Left Side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/qqhzXiNyCotzJdyEbi41EtzYYYI.jpg",),
                    ),
                    kHeight,
                    WidgetVideoActions(
                        icon: Icons.emoji_emotions, title: 'Lol'),
                    WidgetVideoActions(icon: Icons.add, title: 'My List'),
                    WidgetVideoActions(icon: Icons.share, title: 'Share'),
                    WidgetVideoActions(icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class WidgetVideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const WidgetVideoActions(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhiteColor,
            size: 30,
            
          ),
          Text(
            title,
            style: const TextStyle(
              color: kWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
//decorated_icon: ^1.2.1