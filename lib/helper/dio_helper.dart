import 'package:dio/dio.dart';

class DioHelper {
  static Dio? _dioInstance;

  static Dio getDio() {
    if(_dioInstance == null) {
      buildDioClient();
    }
    return _dioInstance!;
  }

  static buildDioClient() {
    _dioInstance = Dio(BaseOptions(
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json
    ));
    _dioInstance?.interceptors.add(LogInterceptor());
  }
}