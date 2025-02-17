import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_clean_architecture/presentation/ui/home_view.dart';

import 'di.dart';
import 'presentation/bloc/home_bloc/home_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=> HomeCubit(getIt()), child: MaterialApp(
      title: "",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    ),);
  }
}
