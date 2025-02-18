import 'package:flutter_bloc_clean_architecture/domain/entities/post_entity.dart';

class HomeState {}

class HomeInitialize extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  List<PostEntity> postEntity;
  HomeSuccess({required this.postEntity});
}

class HomeError extends HomeState {
  String message;
  HomeError({this.message = "Something went wrong!"});
}
