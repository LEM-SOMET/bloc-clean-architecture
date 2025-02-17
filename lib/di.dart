import 'package:dio/dio.dart';
import 'package:flutter_bloc_clean_architecture/data/remote/rest_api.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup(){
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerFactory(() => RestApi(getIt()));
}