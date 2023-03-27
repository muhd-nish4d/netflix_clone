import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/new_and_hot/coming_soon/widget/coming_soon_lists.dart';

class WidgetBuildComingSoon extends StatelessWidget {
  const WidgetBuildComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        children: List.generate(10, (index) => const WidgetComingSoonContent())
        // [
        //   kHeight,
        //   WidgetComingSoonContent()
        // ],
        );
  }
}
