import 'package:fit_hive/core/helpers/basic_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/circule_button.dart';

class CustomProgressFloatingActionButton extends StatelessWidget {
  const CustomProgressFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(40.r)),
      backgroundColor: Colors.white,
      elevation: 0,
      onPressed: () {},
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
          Icons.add_a_photo_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
