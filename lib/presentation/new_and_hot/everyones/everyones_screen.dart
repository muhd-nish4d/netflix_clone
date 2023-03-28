import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/new_and_hot/everyones/widget/everyones_lists.dart';

class WidgetBuildEveriyone extends StatelessWidget {
  const WidgetBuildEveriyone({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      // children: List.generate(10, (index) => const WidgetEveryounesMedia()),
      // children: [
      //   WidgetEveryounesMedia()
      // ],
    );
  }
}
