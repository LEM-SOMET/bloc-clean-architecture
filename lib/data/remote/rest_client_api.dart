import 'package:dio/dio.dart';
import 'package:flutter_bloc_clean_architecture/data/model/post_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'rest_client_api.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class RestClientApi {
  factory RestClientApi(Dio dio, {String baseUrl}) = _RestClientApi;

  @GET('posts')
  Future<List<PostResponseModel>> getPostList();
}
