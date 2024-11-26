import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'scroll_state.dart';

class ScrollCubit extends Cubit<ScrollState> {
  ScrollCubit(this.context) : super(ScrollInitial());
  double progress = 0.25;
  double index = 0;
  ScrollController controller = ScrollController();
  final BuildContext context;

  void scroll() {
    if (progress == 1) {
      emit(ScrollFinish());
    } else {
      progress = progress + 0.25;
      index = index + MediaQuery.of(context).size.width;
      controller.jumpTo(index);
      emit(ScrollIncrease());
    }
  }
}
