import 'package:dio/dio.dart';

class Api {
  
  final Dio _dio = Dio()
    ..options = BaseOptions(
      baseUrl: 'http://example.com/v1/',
    );

  Future<Response<T>> get<T>(String path) {
    return _dio.get<T>(path);
  }

  Future<Response<T>> post<T>(String path, dynamic data) {
    return _dio.post<T>(path, data: data);
  }

  Future<Response<T>> put<T>(String path, dynamic data) {
    return _dio.put<T>(path, data: data);
  }
}
