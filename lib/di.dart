import 'package:dio/dio.dart';
import 'package:flutter_bloc_clean_architecture/data/remote/rest_client_api.dart';
import 'package:flutter_bloc_clean_architecture/data/repository/home_repository_impl.dart';
import 'package:flutter_bloc_clean_architecture/domain/repository/home_repository.dart';
import 'package:flutter_bloc_clean_architecture/domain/usecases/home_usecase.dart';
import 'package:flutter_bloc_clean_architecture/presentation/bloc/home_bloc/home_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerFactory(() => RestClientApi(getIt()));

  //Repository
  getIt.registerFactory<HomeRepository>(() => HomeRepositoryImpl(getIt()));

  //UseCase
  getIt.registerFactory(() => HomeUseCase(getIt()));
  getIt.registerFactory(() => HomeCubit(getIt()));
}
