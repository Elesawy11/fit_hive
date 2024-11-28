import 'package:flutter/material.dart';

import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';

class RowOfIconButtonAndText extends StatefulWidget {
  const RowOfIconButtonAndText({
    super.key,
  });

  @override
  State<RowOfIconButtonAndText> createState() => _RowOfIconButtonAndTextState();
}

class _RowOfIconButtonAndTextState extends State<RowOfIconButtonAndText> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              isChecked = !isChecked;
              setState(() {});
            },
            icon: isChecked == false
                ? Icon(
                    Icons.check_box_outline_blank,
                    color: ColorHelper.colorADA(),
                  )
                : Icon(
                    Icons.check_box,
                    color: ColorHelper.color645(),
                  )),
        Text(
          'By continuing you accept our Privacy Policy and Term of Use.',
          style: FontStyles.font10Medium().copyWith(
            color: ColorHelper.colorADA(),
          ),
        )
      ],
    );
  }
}
