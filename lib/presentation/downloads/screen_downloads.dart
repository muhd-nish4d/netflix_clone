import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

import '../widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final widgetList = [const _SmartDownloads(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: WidgetAppBar(appBarName: 'Downloads')),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) => widgetList[index],
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: widgetList.length,
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kWidth,
        Text('Smart Downloads',style: TextStyle(fontWeight: FontWeight.bold),)
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List imageList = [
    'https://m.media-amazon.com/images/M/MV5BZTIwMTFhNzEtNjYyMC00YTYzLWJlODItZGQxZDg5MjEyMGMyXkEyXkFqcGdeQXVyMTYxNDU3NTQy._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BYzFhM2M1MDUtNDhmNC00YzEzLThiMzctYWYxZTc0MGJhNWYyXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BNzJlM2NmZTItOGQyYS00MmE2LTkwZGUtNDFkNmJmZjRjZjcxXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_FMjpg_UX1000_.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhiteColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          "We will download a personalised selection of\nmovies and shows for you, so there's\nalways something on your\ndevice.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        kHeight,
        SizedBox(
          height: size.width,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.3,
                backgroundColor: Colors.grey[850],
              ),
              DownloadsImageWidget(
                sideHeight: .4,
                sideWidth: .3,
                image: imageList[0],
                margin: const EdgeInsets.only(left: 150,top: 20),
                angle: 10,
              ),
              DownloadsImageWidget(
                sideHeight: .4,
                sideWidth: .3,
                image: imageList[1],
                margin: const EdgeInsets.only(right: 150,top: 20),
                angle: -10,
              ),
              DownloadsImageWidget(
                sideHeight: .45,
                sideWidth: .35,
                image: imageList[2],
                margin: const EdgeInsets.only(top: 29,),
                // angle: 7,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              color: kButtonColorBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Set up',
                  style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        kHeight,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: MaterialButton(
            color: kButtonColorWhite,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'See what you can download',
                style: TextStyle(
                    color: kBlackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.image,
    this.angle = 0,
    required this.margin,
    required this.sideWidth,
    required this.sideHeight,
  });

  final String image;
  final double angle;
  final EdgeInsets margin;
  final double sideWidth;
  final double sideHeight;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        // width: size.width * .4,
        width: size.width * sideWidth,
        height: size.width * sideHeight,
        // height: size.width * .5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
      ),
    );
  }
}
