import 'package:dio/dio.dart';
import 'package:wingman/utils/local_data_source.dart';

class TokenInterceptor extends Interceptor {
  final LocalDataSource _localDataSource = LocalDataSource();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String? token = await _localDataSource.getJwt();
    if (token != null) {
      options.headers.addAll({"TOKEN": token});
    }
    super.onRequest(options, handler);
  }
}
