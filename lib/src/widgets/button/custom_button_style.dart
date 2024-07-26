import 'package:mix/mix.dart';
import 'package:mix_poc/src/styles/base_style.dart';
import 'package:mix_poc/src/widgets/button/custom_button_variant.dart';

class CustomButtonStyle {
  CustomButtonStyle(this.type, this.size);

  final CustomButtonType type;
  final CustomButtonSize size;

  Style container(double screen) => Style(
        $box.borderRadius(8),
        $box.padding.horizontal(16),
        $box.padding.vertical(8),
        CustomButtonSize.large($box.width(screen), $box.height(50)),
        CustomButtonSize.medium($box.width(screen * .5), $box.height(50)),
        CustomButtonType.primary($box.color(BaseStyle.mainColor)),
      ).applyVariants([type, size]);

  Style label() => Style(
        $text.style.fontWeight.w900(),
        $text.textAlign.center(),
        CustomButtonSize.large($text.style.fontSize(24)),
        CustomButtonSize.medium($text.style.fontSize(16)),
        CustomButtonType.primary(
          $text.style.color.white(),
        ),
        CustomButtonType.link(
            $text.style.color.black(), $text.style.decoration.underline()),
      ).applyVariants([type, size]);
}
