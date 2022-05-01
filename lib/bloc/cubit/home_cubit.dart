import 'package:bloc/bloc.dart';
import 'package:cycle_lock/constants/home_pages.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(0, homePages[0].name));

  void onPageSelect(int newIndex) {
    final int index = state.index;
    if (newIndex == index) {
      print('Page reselected');
      return;
    }
    if (newIndex < 0 || newIndex > homePages.length) {
      print('Invalid index');
      return;
    }
    emit(HomeState(newIndex, homePages[newIndex].name));
  }
}
