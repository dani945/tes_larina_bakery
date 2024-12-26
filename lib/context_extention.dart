import 'package:flutter/material.dart';

import 'i_custom_text_data_extensions.dart';

extension ISizeExtentions on BuildContext {
  //=========== color ===================
  Color get primaryColor => Theme.of(this).primaryColor;

  Color get disableColor => Theme.of(this).disabledColor;

  Color get errorColor => Theme.of(this).colorScheme.error;

  //=========== Size =============
  Size get iSize => MediaQuery.of(this).size;
  double mQWidth(double number) => iSize.width * number;
  double mQHight(double number) => iSize.height * number;

  Widget sbWidth(double size) {
    return SizedBox(
      width: size,
    );
  }

  Widget sbHeight(double size) {
    return SizedBox(
      height: size,
    );
  }

  //=========== Typography =============
  TextStyle? get displayLarge => Theme.of(this).textTheme.displayLarge;

  TextStyle? get displayMedium => Theme.of(this).textTheme.displayMedium;

  TextStyle? get displaySmall => Theme.of(this).textTheme.displaySmall;

  TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;

  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;

  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;

  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;

  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;

  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;

  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;

  TextStyle? get labelMedium => Theme.of(this).textTheme.labelMedium;

  TextStyle? get labelSmall => Theme.of(this).textTheme.labelSmall;

  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;

  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;

  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;

  TextStyle? get headline1 => Theme.of(this).extension<ICustomTextDataExtension>()?.headline1;

  TextStyle? get headline2 => Theme.of(this).extension<ICustomTextDataExtension>()?.headline2;

  TextStyle? get headline3 => Theme.of(this).extension<ICustomTextDataExtension>()?.headline3;

  TextStyle? get headline4 => Theme.of(this).extension<ICustomTextDataExtension>()?.headline4;

  TextStyle? get headline5 => Theme.of(this).extension<ICustomTextDataExtension>()?.headline5;

  TextStyle? get subtitle1 => Theme.of(this).extension<ICustomTextDataExtension>()?.subtitle1;

  TextStyle? get subtitle2 => Theme.of(this).extension<ICustomTextDataExtension>()?.subtitle2;

  TextStyle? get button => Theme.of(this).extension<ICustomTextDataExtension>()?.button;

  TextStyle? get caption => Theme.of(this).extension<ICustomTextDataExtension>()?.caption;

  TextStyle? get overline => Theme.of(this).extension<ICustomTextDataExtension>()?.overline;
}
