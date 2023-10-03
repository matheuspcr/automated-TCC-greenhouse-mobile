import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'dashboard_entity.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://shy-cyan-toad-tie.cyclic.app/')
abstract class RestClient {

  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/dashboard')
  Future<DashboardEntity> getDashboard();
}

