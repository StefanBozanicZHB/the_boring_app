import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_boring_app/features/random_activity/domain/entities/random_activity.dart';
import 'package:the_boring_app/features/random_activity/presentation/manager/random_activity_provider.dart';

import '../../../../core/errors/failures.dart';

class RandomActivityTextWidget extends StatelessWidget {
  const RandomActivityTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RandomActivity? randomActivity = Provider.of<RandomActivityProvider>(context).randomActivity;
    Failure? failure = Provider.of<RandomActivityProvider>(context).failure;
    late String randomActivityText;
    if (randomActivity != null) {
      randomActivityText = randomActivity.activity;
    } else if (failure != null) {
      randomActivityText = failure.errorMessage!;
    } else {
      return const Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
          color: Colors.orangeAccent,
        ),
      );
    }
    return Text(
      randomActivityText,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        shadows: <Shadow>[
          Shadow(
            blurRadius: 100.0,
            color: Colors.black,
          ),
        ],
        fontSize: 60,
      ),
    );
  }
}
