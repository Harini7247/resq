import 'package:flutter/material.dart';
import 'package:resq/src/utils/themes/widget_themes/text_theme.dart';

class TAppTheme{
  TAppTheme._();
  static ThemeData lightTheme=ThemeData(
      brightness:Brightness.light,
      textTheme:TTextTheme.lightTheme
  );
  static ThemeData darkTheme=ThemeData(
      brightness:Brightness.dark,
      textTheme: TTextTheme.darkTheme
  );
}