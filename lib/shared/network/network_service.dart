import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:exachanger/shared/util/app_exception.dart';

abstract class NetworkService {
  String get baseUrl;

  String get apiKey;

  Map<String, Object> get headers;

  void updateHeaders(Map<String, dynamic> data);

  Future<Either<AppException, Response>> get(
    String endPoint, {
    Map<String, dynamic>? queryParams,
  });

  Future<Either<AppException, Response>> post(String endPoint,
      {Map<String, dynamic>? data});
}

enum NetworkEnv {
  BASE_URL,
  API_KEY,
}
