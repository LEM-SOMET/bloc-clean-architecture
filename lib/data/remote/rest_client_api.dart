import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'rest_client_api.g.dart';

@RestApi(baseUrl: 'https://reqres.in/')
abstract class RestClientApi {
  factory RestClientApi(Dio dio, {String baseUrl}) = _RestClientApi;
}
