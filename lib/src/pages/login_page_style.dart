import 'package:mix/mix.dart';

class LoginPageStyle {
  static Style backgroundContainer(double height) => Style(
      $box.maxWidth(height),
      $box.color.white(),
      $box.borderRadius.circular(16),
      $box.padding.all(40));
}
