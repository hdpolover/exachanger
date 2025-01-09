import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:exachanger/shared/network/network_service.dart';
import 'package:exachanger/shared/util/app_exception.dart';

mixin ExceptionHandlerMixin on NetworkService {
  Future<Either<AppException, Response>> handleException<T extends Object>(
      Future<Response<dynamic>> Function() handler,
      {String endPoint = ''}) async {
    try {
      final res = await handler();
      return Right(Response(
        statusCode: res.statusCode ?? 200,
        data: res.data,
        statusMessage: res.statusMessage,
        requestOptions: res.requestOptions,
      ));
    } catch (ex) {
      String message = '';
      String identifier = '';
      int statusCode = 0;
      switch (ex.runtimeType) {
        case const (SocketException):
          ex as SocketException;
          message = 'unable to connect to the server.';
          statusCode = 0;
          identifier = 'Socket Exception ${ex.message}\n at  $endPoint';
          break;

        case const (DioException):
          ex as DioException;
          message = ex.response?.data?['message'] ?? 'Internal Error occurred';
          statusCode = 0;
          identifier = 'Dio Exception ${ex.message}\n at  $endPoint';
          break;

        default:
          message = 'unknown error occurred';
          statusCode = 0;
          identifier = 'unknown error ${ex.toString()}\n at  $endPoint';
          break;
      }
      return Left(AppException(
          message: message,
          statusCode: statusCode,
          identifier: identifier,
          which: 'http'));
    }
  }
}
