import 'package:flutter_bloc_clean_architecture/domain/entities/post_entity.dart';
import 'package:flutter_bloc_clean_architecture/domain/repository/home_repository.dart';

class HomeUseCase {
  final HomeRepository _homeRepository;

  HomeUseCase(this._homeRepository);

  Future<List<PostEntity>> getPostData() async {
    final postList = await _homeRepository.getPostList();
    return postList;
  }
}
