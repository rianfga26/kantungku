import 'package:dio/dio.dart';

final api = Dio(BaseOptions(
    baseUrl: 'https://api.kantungku.com', contentType: 'application/json'));
