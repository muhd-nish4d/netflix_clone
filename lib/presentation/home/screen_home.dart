import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/backround_card.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card_main.dart';
import '../widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, child) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  WidgetBackgroundCard(),
                  MainCardWithTitle(title: 'Released in the past year'),
                  kHeight,
                  MainCardWithTitle(title: 'Trending Now'),
                  kHeight,
                  WidgetNumberCardTop(),
                  MainCardWithTitle(title: 'Tense Daramas'),
                  kHeight,
                  MainCardWithTitle(title: 'South Indian Cinema')
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 75,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            kBlackColor,
                            Colors.brown.withOpacity(0)
                          ])),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                'https://cdn-icons-png.flaticon.com/128/732/732228.png',
                                width: 40,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                size: 30,
                                color: Colors.white,
                              ),
                              kWidth,
                              Container(
                                color: Colors.blue,
                                width: 30,
                                height: 30,
                              ),
                              kWidth
                            ],
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                'TV Shows',
                                style: kTextStyle,
                              ),
                              Text(
                                'Movies',
                                style: kTextStyle,
                              ),
                              Text(
                                'Categories',
                                style: kTextStyle,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : kHeight
            ],
          ),
        );
      },
    ));
  }
}
