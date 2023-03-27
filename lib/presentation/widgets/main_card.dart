import 'package:flutter/cupertino.dart';
import '../../core/constants.dart';

class MainCardForHome extends StatelessWidget {
  const MainCardForHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 170,
        // height: 230,
        decoration: BoxDecoration(
            borderRadius: kRadius10,
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://m.media-amazon.com/images/M/MV5BZTIwMTFhNzEtNjYyMC00YTYzLWJlODItZGQxZDg5MjEyMGMyXkEyXkFqcGdeQXVyMTYxNDU3NTQy._V1_FMjpg_UX1000_.jpg',
                ))),
      ),
    );
  }
}
