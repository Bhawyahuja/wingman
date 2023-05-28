// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _VerificationClient implements VerificationClient {
  _VerificationClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://test-otp-api.7474224.xyz/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<VerificationResponseDto> verifyOtp(
      VerificationRequestDto verificationRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = verificationRequest;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VerificationResponseDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'verifyotp.php',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VerificationResponseDto.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
