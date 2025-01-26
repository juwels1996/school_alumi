import 'package:dio/dio.dart';
import 'package:testing_purpose/src/helper/api_urls.dart';

class DioConfig {
  static DioConfig? _instance;

  DioConfig._();

  factory DioConfig() => _instance ??= DioConfig._();

  late Dio dio;

  initialize() {
    dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: Duration(seconds: 10),
          receiveTimeout: Duration(seconds: 10),
          sendTimeout: Duration(seconds: 10),
          followRedirects: false,
          maxRedirects: 8,
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        )
    );


    dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          // Do something before request is sent
          return handler.next(options); //continue
        },
        onResponse: (response, handler) {
          return handler.next(response); // continue
        },
        onError: (DioError e, handler) {
          return handler.next(e); //continue
        }
    ));
  }
}