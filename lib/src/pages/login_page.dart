import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:mix_poc/src/pages/login_page_style.dart';
import 'package:mix_poc/src/styles/base_style.dart';
import 'package:mix_poc/src/widgets/button/custom_button.dart';
import 'package:mix_poc/src/widgets/button/custom_button_variant.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Box(
          style: Style($box.minHeight(sizeOf.height), $box.color.white30()),
          child: Center(
            child: Card(
              child: Box(
                style: LoginPageStyle.backgroundContainer(sizeOf.width * .8),
                child: VBox(
                  style: Style($flex.gap(20)),
                  children: [
                    StyledText('Mix Login', style: BaseStyle.titleStyle()),
                    TextFormField(),
                    TextFormField(),
                    CustomButton(
                      text: 'Entrar',
                      onPressed: () {},
                      size: CustomButtonSize.large,
                      type: CustomButtonType.primary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
