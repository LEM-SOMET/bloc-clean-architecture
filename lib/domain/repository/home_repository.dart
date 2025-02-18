import 'package:flutter_bloc_clean_architecture/domain/entities/post_entity.dart';

abstract class HomeRepository {
  Future<List<PostEntity>> getPostList();
}
