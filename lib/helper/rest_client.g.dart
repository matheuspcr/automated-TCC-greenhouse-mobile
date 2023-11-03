// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://10.0.2.2:3000/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<DashboardEntity> getDashboard() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DashboardEntity>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/dashboard',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DashboardEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<String> toggleActuator(ActuatorChangeRequest request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<String>(_setStreamType<String>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/toggleActuator',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    return value;
  }

  @override
  Future<List<String>> getSeeds() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result =
        await _dio.fetch<List<dynamic>>(_setStreamType<List<String>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/getSeeds',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!.cast<String>();
    return value;
  }

  @override
  Future<SeedEntity> getSeedDetails(String seed) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<SeedEntity>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/getSeeds/${seed}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SeedEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> updateSeed(String seed) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = seed;
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/updateSeed',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
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
