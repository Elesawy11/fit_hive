part of 'scroll_cubit.dart';

@immutable
sealed class ScrollState {}

final class ScrollInitial extends ScrollState {}
final class ScrollIncrease extends ScrollState {}
final class ScrollFinish extends ScrollState {}
