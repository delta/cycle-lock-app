import 'package:cycle_lock/bloc/home/home_cubit.dart';
import 'package:cycle_lock/constants/home_pages.dart';
import 'package:cycle_lock/views/widgets/home_bottom_bar.dart';
import 'package:cycle_lock/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
    context
        .read<HomeCubit>()
        .stream
        .listen((state) => _pageController.jumpToPage(state.index));
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) => Scaffold(
            appBar: HomeAppBar(title: state.title),
            body: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: homePages.map((e) => e.widget).toList(),
            ),
            bottomNavigationBar: HomeBottomBar(
              selectedIndex: state.index,
              onSelect: context.read<HomeCubit>().onPageSelect,
            ),
          ),
        ),
      );
}
