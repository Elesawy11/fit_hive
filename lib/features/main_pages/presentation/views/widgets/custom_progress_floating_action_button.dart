import 'package:flutter/material.dart';
import '../../../../../core/widgets/circule_button.dart';

class CustomProgressFloatingActionButton extends StatelessWidget {
  const CustomProgressFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      elevation: 0,
      onPressed: () {},
      child: const CirculerButton(
        child: Icon(
          Icons.add_a_photo_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
