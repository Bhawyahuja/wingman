import 'dart:convert';

import 'package:dio/dio.dart';

class JsonFixInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.requestOptions.responseType == ResponseType.json) {
      var data = response.data;
      if (data is! Map<String, dynamic>) {
        response.data = jsonDecode(data);
      }
    }
    super.onResponse(response, handler);
  }
}
