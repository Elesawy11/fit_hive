import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacers.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class ColumnOfTextFormField extends StatelessWidget {
  const ColumnOfTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: 'First name',
          validator: (value) {},
          prefixIcon: const Icon(Icons.person_outline),
        ),
        verticalSpace(24),
        CustomTextFormField(
          hintText: 'Last name',
          validator: (value) {},
          prefixIcon: const Icon(Icons.person_outline),
        ),
        verticalSpace(24),
        CustomTextFormField(
          hintText: 'Email',
          validator: (value) {},
          prefixIcon: const Icon(Icons.email_outlined),
        ),
        verticalSpace(24),
        const CustomObsecureTextField(),
      ],
    );
  }
}

class CustomObsecureTextField extends StatefulWidget {
  const CustomObsecureTextField({
    super.key,
  });

  @override
  State<CustomObsecureTextField> createState() =>
      _CustomObsecureTextFieldState();
}

class _CustomObsecureTextFieldState extends State<CustomObsecureTextField> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      isObscureText: isObscure,
      hintText: 'Password',
      validator: (value) {},
      suffixIcon: IconButton(
        onPressed: () {
          isObscure = !isObscure;
          setState(() {});
        },
        icon: isObscure == true
            ? const Icon(
                Icons.visibility_outlined,
              )
            : const Icon(
                Icons.visibility_off_outlined,
              ),
      ),
      prefixIcon: const Icon(
        Icons.lock_outline,
      ),
    );
  }
}
