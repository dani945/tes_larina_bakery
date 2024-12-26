import 'package:flutter/material.dart';

class ICustomTextDataExtension extends ThemeExtension<ICustomTextDataExtension> {
  TextStyle? headline1;

  TextStyle? headline2;

  TextStyle? headline3;

  TextStyle? headline4;

  TextStyle? headline5;

  TextStyle? headline6;

  TextStyle? subtitle1;

  TextStyle? subtitle2;

  TextStyle? button;

  TextStyle? caption;

  TextStyle? overline;

  ICustomTextDataExtension(
      {this.headline1,
      this.headline2,
      this.headline3,
      this.headline4,
      this.headline5,
      this.headline6,
      this.subtitle1,
      this.subtitle2,
      this.button,
      this.caption,
      this.overline});

  @override
  ThemeExtension<ICustomTextDataExtension> copyWith(
      {TextStyle? headline1,
      TextStyle? headline2,
      TextStyle? headline3,
      TextStyle? headline4,
      TextStyle? headline5,
      TextStyle? headline6,
      TextStyle? subtitle1,
      TextStyle? subtitle2,
      TextStyle? button,
      TextStyle? caption,
      TextStyle? overline}) {
    return ICustomTextDataExtension(
      headline1: headline1 ?? this.headline1,
      headline2: headline2 ?? this.headline2,
      headline3: headline3 ?? this.headline3,
      headline4: headline4 ?? this.headline4,
      headline5: headline5 ?? this.headline5,
      headline6: headline6 ?? this.headline6,
    );
  }

  @override
  ThemeExtension<ICustomTextDataExtension> lerp(
      ThemeExtension<ICustomTextDataExtension>? other, double t) {
    return this;
  }
}
