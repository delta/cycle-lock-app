import 'package:cycle_lock/bloc/home/home_cubit.dart';
import 'package:cycle_lock/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: BlocProvider(
          create: (context) => HomeCubit(),
          child: const HomePage(),
        ),
      );
}
