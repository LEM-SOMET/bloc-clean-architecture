
import 'package:dio/dio.dart';

part 'user_remote.g.dart';

@RestApi(baseUrl: 'https://reqres.in/')
abstract class RestApi{
  factory RestApi(Dio dio, {String baseUrl}) = _RestApi;

}