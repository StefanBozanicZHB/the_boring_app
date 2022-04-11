import 'package:flutter/material.dart';
import 'package:the_boring_app/features/random_activity/presentation/widgets/random_activity_banner_widget.dart';
import 'package:the_boring_app/features/random_activity/presentation/widgets/random_activity_text_widget.dart';

class RandomActivityWidget extends StatelessWidget {
  const RandomActivityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 3.0,
              color: Colors.black26,
            )
          ],
          image: const DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
            fit: BoxFit.cover,
            image: AssetImage(
              'images/water_bg.jpg',
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: SingleChildScrollView(
                  child: RandomActivityTextWidget(),
                ),
              ),
            ),
            RandomActivityBannerWidget(),
          ],
        ),
      ),
    );
  }
}
