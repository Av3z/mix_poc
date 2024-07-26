import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:mix_poc/src/widgets/button/custom_button_style.dart';
import 'package:mix_poc/src/widgets/button/custom_button_variant.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final CustomButtonType type;
  final CustomButtonSize size;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.type = CustomButtonType.primary,
      this.size = CustomButtonSize.large});

  @override
  Widget build(BuildContext context) {
    final style = CustomButtonStyle(type, size);
    return PressableBox(
        style: style.container(MediaQuery.sizeOf(context).width),
        onPress: onPressed,
        child: StyledText(
          text,
          style: style.label(),
        ));
  }
}
