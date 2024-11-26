import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/basic_gradient.dart';

class CirculerButton extends StatelessWidget {
  const CirculerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 33.r,
      backgroundColor: Colors.white,
      child: Container(
        height: 60.r,
        width: 60.r,
        decoration: BoxDecoration(
          gradient: basicGradient(),
          borderRadius: BorderRadius.circular(
            40.r,
          ),
        ),
        child: const Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
      ),
    );
  }
}
