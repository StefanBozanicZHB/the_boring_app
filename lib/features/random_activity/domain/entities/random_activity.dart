import 'package:equatable/equatable.dart';

class RandomActivity extends Equatable {
  final String activity;
  final String type;
  final int participants;
  final double price;
  final String link;
  final String? key;
  final double accessibility;

  const RandomActivity({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    this.key,
    required this.accessibility,
  });

  @override
  List<Object?> get props => [ // sluzi da se uporede dva objekta preko nekog parametra
    activity,
    type,
    participants,
    price,
    link,
    key,
    accessibility,
  ];
}
