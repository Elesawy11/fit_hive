import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_card_widget.dart';

class StackedCards extends StatefulWidget {
  const StackedCards(
      {super.key, required this.screenWidth, required this.screenHeight});
  final double screenWidth, screenHeight;
  @override
  State<StackedCards> createState() => _StackedCardsState();
}

class _StackedCardsState extends State<StackedCards> {
  List<Offset> cardPositions = [];

  final int cardCount = 3;

  int topCounterIndex = 0;

  @override
  void initState() {
    super.initState();

    cardPositions = List.generate(
      cardCount,
      (index) => Offset(
        widget.screenWidth * 0.15,
        200 + index * -20,
      ),
    );
    topCounterIndex = cardPositions.length - 1;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: List.generate(cardCount, (index) {
      return AnimatedPositioned(
        duration: const Duration(milliseconds: 300),
        left: cardPositions[index].dx,
        top: cardPositions[index].dy,
        child: GestureDetector(
          onPanUpdate: (details) {
            if (index == topCounterIndex) {
              setState(() {
                cardPositions[index] += details.delta;
              });
            }
          },
          onPanEnd: (details) {
            if (cardPositions[index].dx + widget.screenWidth * 0.73 >=
                widget.screenWidth) {
              cardPositions[index] = Offset(
                2 * widget.screenWidth + index * 10,
                2 * widget.screenHeight + index * 20,
              );

              setState(() {
                topCounterIndex = --topCounterIndex;
              });
            } else if (cardPositions[index].dx <= 0) {
              cardPositions[index] = Offset(
                -2 * widget.screenWidth + index * 10,
                2 * widget.screenHeight + index * 20,
              );

              setState(() {
                topCounterIndex = --topCounterIndex;
              });
            } else {
              cardPositions[index] = Offset(
                widget.screenWidth * 0.15,
                200 + index * -20,
              );
              setState(() {});
            }
          },
          child: const CustomCardWidget(),
        ),
      );
    }));
  }
}
