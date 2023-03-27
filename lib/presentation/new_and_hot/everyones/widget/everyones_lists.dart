import 'package:flutter/material.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/constants.dart';
import '../../../home/widgets/custom_button.dart';
import '../../widgets/media_widget.dart';

class WidgetEveryounesMedia extends StatelessWidget {
  const WidgetEveryounesMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        kHeight,
        const Text(
          'Friends',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        kHeight,
        const Text(
          'This his sitcom follows the many misadventures of six\n20-something also as they navigate the paitfalls of\nwork, life and love in 1990s Manhattan.',
          style: TextStyle(color: kGreyColor),
        ),
        kHeight50,
        const WidgetMediaNewHot(image: kEveryouneWatch),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SizedBox(),
            const Spacer(),
            customButtonWidget(
                icon: Icons.send_outlined,
                title: 'Share',
                textSize: 10,
                iconSize: 30),
            kWidth,
            customButtonWidget(
                icon: Icons.add, title: 'My List', textSize: 10, iconSize: 30),
            kWidth,
            customButtonWidget(
                icon: Icons.play_arrow_rounded,
                title: 'Play',
                textSize: 10,
                iconSize: 30),
            kWidth
          ],
        ),
        Image.network(
          'https://cdn-icons-png.flaticon.com/128/5977/5977590.png',
          width: 30,
        ),
      ]),
    );
  }
}
