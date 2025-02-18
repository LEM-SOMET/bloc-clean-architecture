import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/domain/usecases/home_usecase.dart';
import 'package:flutter_bloc_clean_architecture/presentation/bloc/home_bloc/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeUseCase _homeUseCase;
  HomeCubit(this._homeUseCase) : super(HomeInitialize());

  void getPostListing() async {
    emit(HomeLoading());
    try {
      final postList = await _homeUseCase.getPostData();
      emit(HomeSuccess(postEntity: postList));
    } catch (e) {
      emit(HomeError(message: e.toString()));
    }
  }
}
