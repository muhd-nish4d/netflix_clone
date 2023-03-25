import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

import '../../core/constants.dart';
import 'main_card.dart';

class MainCardWithTitle extends StatelessWidget {
  final String title;
  const MainCardWithTitle({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
         Padding(
           padding: const EdgeInsets.only(left: 10),
           child: WidgetMainTitler(title: title),
         ),
        kHeight,
        LimitedBox(
          maxHeight: 230,
          child: ListView(
            
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => const MainCardForHome()),
          ),
        )
      ],
    );
  }
}