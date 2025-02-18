import 'package:flutter_bloc_clean_architecture/data/remote/rest_client_api.dart';
import 'package:flutter_bloc_clean_architecture/domain/entities/post_entity.dart';
import 'package:flutter_bloc_clean_architecture/domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final RestClientApi _restClientApi;
  HomeRepositoryImpl(this._restClientApi);

  @override
  Future<List<PostEntity>> getPostList() async {
    try {
      final posts = await _restClientApi.getPostList();
      final List<PostEntity> postEntity = [];
      for (var element in posts) {
        postEntity.add(PostEntity(
          userId: element.userId,
          id: element.id,
          title: element.title,
          body: element.body,
        ));
      }
      return postEntity;
    } catch (e) {
      return [];
    }
  }
}
