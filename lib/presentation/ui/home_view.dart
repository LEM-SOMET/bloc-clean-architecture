import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/presentation/bloc/home_bloc/home_cubit.dart';
import 'package:flutter_bloc_clean_architecture/presentation/bloc/home_bloc/home_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context.read<HomeCubit>().getPostListing();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeSuccess) {
            return ListView.builder(
              itemCount: state.postEntity.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${state.postEntity[index].userId}"),
                  subtitle: Text("${state.postEntity[index].title}"),
                );
              },
            );
          } else if (state is HomeError) {
            return Center(
              child: Text(state.message.toString()),
            );
          }
          return Container();
        },
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Center(
        child: Text("App Title"),
      ),
    );
  }
}
