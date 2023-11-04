import 'package:automated_tcc_greenhouse_mobile/entities/request/actuator_change_request.dart';
import 'package:automated_tcc_greenhouse_mobile/entities/seed_entity.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../entities/dashboard_entity.dart';

part 'rest_client.g.dart';

const String baseUrlProd = 'https://shy-cyan-toad-tie.cyclic.app/';
const String baseUrlLocal = 'http://10.0.2.2:3000/';

@RestApi(baseUrl: baseUrlLocal)
abstract class RestClient {

  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/dashboard')
  Future<DashboardEntity> getDashboard();

  @POST('/toggleActuator')
  Future<String> toggleActuator(@Body() ActuatorChangeRequest request);

  @GET('/getSeeds')
  Future<List<String>> getSeeds();

  @GET('/getSeeds')
  Future<SeedEntity> getSeedDetails(@Query('seed') String seed);

  @POST('/updateSeed')
  Future<void> updateSeed(@Body() String seed);
}

