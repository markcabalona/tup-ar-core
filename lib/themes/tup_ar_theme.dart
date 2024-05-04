import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tup_ar_core/themes/tup_ar_colors.dart';

abstract class TupArTheme {
  static final _defaultThemeData = ThemeData(
    useMaterial3: true,
    inputDecorationTheme: _inputDecorationTheme,
    filledButtonTheme: _filledButtonTheme,
    outlinedButtonTheme: _outlinedButtonTheme,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  static final themeData = _defaultThemeData.copyWith(
    colorScheme: TupArColors.darkColorScheme,
    scaffoldBackgroundColor: TupArColors.scaffoldBackgroundColorDark,
  );

  static final themeDataLight = _defaultThemeData.copyWith(
    colorScheme: TupArColors.lightColorScheme,
    scaffoldBackgroundColor: TupArColors.scaffoldBackgroundColorLight,
  );

  static final _inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        10,
      ),
    ),
  );

  static final _filledButtonTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      minimumSize: const Size.fromHeight(
        kTextTabBarHeight,
      ),
    ),
  );

  static final _outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      minimumSize: const Size.fromHeight(
        kTextTabBarHeight,
      ),
    ),
  );
}
