part of 'scroll_cubit.dart';

@immutable
sealed class ScrollState {}

final class ScrollInitial extends ScrollState {}
final class ScrollIncrease extends ScrollState {
  final double progress;

  ScrollIncrease({required this.progress});
}
final class ScrollFinish extends ScrollState {}
