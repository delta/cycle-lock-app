import 'package:cycle_lock/bloc/cubit/home_cubit.dart';
import 'package:cycle_lock/views/widgets/home_bottom_bar.dart';
import 'package:cycle_lock/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) => Column(
              children: [
                HomeAppBar(title: state.title),
                HomeBottomBar(
                  selectedIndex: state.index,
                  onSelect: context.read<HomeCubit>().onPageSelect,
                ),
              ],
            ),
          ),
        ),
      );
}
