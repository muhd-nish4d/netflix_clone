import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/constants.dart';
import '../../../home/widgets/custom_button.dart';
import '../../widgets/media_widget.dart';

class WidgetComingSoonContent extends StatelessWidget {
  const WidgetComingSoonContent({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        kHeight,
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 420,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'FEB',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kGreyColor),
                  ),
                  Text(
                    '11',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 420,
              width: screenSize.width - 50,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WidgetMediaNewHot(image: kComingSoon),
                  kHeight20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TALLGIRL2',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily:
                                GoogleFonts.permanentMarker().fontFamily),
                      ),
                      Row(
                        children: [
                          customButtonWidget(
                              icon: CupertinoIcons.bell,
                              title: 'Remaind me',
                              iconSize: 20,
                              textSize: 10),
                          kWidth,
                          customButtonWidget(
                              icon: CupertinoIcons.info,
                              title: 'Info',
                              iconSize: 20,
                              textSize: 10),
                          kWidth
                        ],
                      ) //Delicious Handrawn
                    ],
                  ),
                  kHeight,
                  const Text('Coming on Friday'),
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/128/5977/5977590.png',
                    width: 30,
                  ),
                  const Text(
                    'Tall Girl 2',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  kHeight,
                  const Text(
                    "Landing the lead in the school musical is a\ndream come true for jodi, until the pressure\nsends her confidence - and her relationship -\ninto a tailspin",
                    style: TextStyle(color: kGreyColor),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}