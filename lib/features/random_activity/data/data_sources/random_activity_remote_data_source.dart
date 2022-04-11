import 'package:dio/dio.dart';

import '../../../../core/errors/exceptions.dart';
import '../models/random_activity_model.dart';

abstract class RandomActivityRemoteDataSource {           // napravi se abstraktna klasa sa metodom za get sa neta
  Future<RandomActivityModel>? getRandomActivity();
}

class RandomActivityRemoteDataSourceImpl implements RandomActivityRemoteDataSource {
  final Dio dio;      // dio je klasa bibloteke za rad sa http-om

  RandomActivityRemoteDataSourceImpl({required this.dio});

  @override
  Future<RandomActivityModel>? getRandomActivity() async {
    final response = await dio.get(
      'https://www.boredapi.com/api/activity',
      queryParameters: {
        'api_key': 'if you need',
      },
    );

    if (response.statusCode == 200) {       // kada se dobije odgovor prosledi se daljom instaci tj. implementaciji repositorija
      return RandomActivityModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
