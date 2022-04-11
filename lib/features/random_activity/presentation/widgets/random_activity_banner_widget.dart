import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_boring_app/features/random_activity/domain/entities/random_activity.dart';
import 'package:the_boring_app/features/random_activity/presentation/manager/random_activity_provider.dart';

class RandomActivityBannerWidget extends StatelessWidget {
  const RandomActivityBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RandomActivity? randomActivity = Provider.of<RandomActivityProvider>(context).randomActivity;
    if (randomActivity != null) {
      return Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListTile(
          title: const Text(
            'Number of people',
            style: TextStyle(fontSize: 20),
          ),
          trailing: Chip(
            backgroundColor: Colors.white,
            label: Text(
              randomActivity.participants.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            avatar: const Icon(
              Icons.person,
              color: Colors.orangeAccent,
            ),
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
