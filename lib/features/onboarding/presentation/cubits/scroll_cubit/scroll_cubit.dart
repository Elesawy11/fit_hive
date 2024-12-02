import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'scroll_state.dart';

class ScrollCubit extends Cubit<ScrollState> {
  ScrollCubit(this.screenWidth) : super(ScrollInitial());

  final double screenWidth;
  double progress = 0.25;
  double index = 0;
  ScrollController controller = ScrollController();

  void scroll() async {
    if (progress == 1) {
      emit(ScrollFinish());
      await close();
    } else {
      progress += 0.25;
      index += screenWidth;
      controller.jumpTo(index);
      emit(ScrollIncrease(progress: progress));
    }
  }

  @override
  Future<void> close() {
    controller.dispose();

    return super.close();
  }
}
