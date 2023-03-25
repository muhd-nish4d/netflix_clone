import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/title.dart';

const imageLink =
    "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/6Lw54zxm6BAEKJeGlabyzzR5Juu.jpg";

class WigetSearchResult extends StatelessWidget {
  const WigetSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTextTitle(title: 'Movies & TV'),
          kHeight,
          Expanded(
              child: GridView.count(
            childAspectRatio: 1 / 1.5,
            mainAxisSpacing: 5,
            crossAxisSpacing: 8,
            shrinkWrap: true,
            crossAxisCount: 3,
            children: List.generate(20, (index) {
              return const MainCard();
            }),
          ))
        ],
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
          image: const DecorationImage(
              image: NetworkImage(imageLink), fit: BoxFit.cover)),
    );
  }
}

// List<w>
