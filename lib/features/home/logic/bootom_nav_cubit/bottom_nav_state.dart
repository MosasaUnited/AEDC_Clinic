part of 'bottom_nav_cubit.dart';

sealed class BottomNavState {}

final class BottomNavInitial extends BottomNavState {}

final class BottomNavStateSuccess extends BottomNavState {
  final int currentIndex;

  BottomNavStateSuccess(this.currentIndex);
}
