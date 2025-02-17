
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/domain/usecases/home_usecase.dart';
import 'package:flutter_bloc_clean_architecture/presentation/bloc/home_bloc/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeUseCase _homeUseCase;
  HomeCubit(this._homeUseCase): super(HomeInitialize());


}