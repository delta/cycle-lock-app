part of 'home_cubit.dart';

class HomeState extends Equatable {
  final int index;
  final String title;

  const HomeState(this.index, this.title);

  @override
  List<Object> get props => [index, title];
}
