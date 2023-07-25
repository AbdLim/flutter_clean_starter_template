import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/app_colors.dart';

class AppTheme {
  static ThemeData light() => ThemeData(
        useMaterial3: true,
        primaryColor: AppColors.primaryMaterialColor,
        shadowColor: Colors.grey[300],
        scaffoldBackgroundColor: AppColors.lightBackground,
        cardColor: AppColors.lightCard,
        splashFactory: NoSplash.splashFactory,
        colorScheme: ColorScheme.fromSwatch(
                primarySwatch: AppColors.primaryMaterialColor)
            .copyWith(background: AppColors.lightBackground),
        appBarTheme: _buildAppBarTheme(textColor: AppColors.lightBackground),
        buttonTheme: _buildButtonThemeData(),
        textTheme: _buildTextTheme(textColor: AppColors.lightFont),
        checkboxTheme: _buildCheckboxTheme(),
        popupMenuTheme:
            _buildPopupMenuTheme(backgroundColor: AppColors.lightBackground2),
        cardTheme: _buildCardTheme(cardColor: AppColors.lightCard),
        iconTheme: _buildIconTheme(iconColor: AppColors.lightIcon),
        listTileTheme: _buildListTileTheme(textColor: AppColors.lightFont),
        inputDecorationTheme: _buildInputDecorationTheme(),
        elevatedButtonTheme: _buildElevatedButtonTheme(),
      );

  static ThemeData dark() => ThemeData(
        useMaterial3: true,
        primaryColor: AppColors.primaryMaterialColor,
        shadowColor: Colors.grey[300],
        scaffoldBackgroundColor: AppColors.darkBackground,
        cardColor: AppColors.darkCard,
        splashFactory: NoSplash.splashFactory,
        colorScheme: ColorScheme.fromSwatch(
                primarySwatch: AppColors.primaryMaterialColor)
            .copyWith(background: AppColors.lightBackground),
        appBarTheme: _buildAppBarTheme(textColor: AppColors.darkBackground),
        buttonTheme: _buildButtonThemeData(),
        textTheme: _buildTextTheme(textColor: AppColors.darkFont),
        checkboxTheme: _buildCheckboxTheme(),
        popupMenuTheme:
            _buildPopupMenuTheme(backgroundColor: AppColors.darkBackground2),
        cardTheme: _buildCardTheme(cardColor: AppColors.darkCard),
        iconTheme: _buildIconTheme(iconColor: AppColors.darkIcon),
        listTileTheme: _buildListTileTheme(textColor: AppColors.darkFont),
        inputDecorationTheme: _buildInputDecorationTheme(),
        elevatedButtonTheme: _buildElevatedButtonTheme(),
      );

  static AppBarTheme _buildAppBarTheme({required Color textColor}) {
    return AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }

  static ButtonThemeData _buildButtonThemeData() {
    return ButtonThemeData(
      buttonColor: AppColors.primaryMaterialColor,
      minWidth: 100,
      height: 45,
    );
  }

  static TextTheme _buildTextTheme({required Color textColor}) {
    return GoogleFonts.nunitoTextTheme().copyWith(
      titleLarge: GoogleFonts.nunito(color: textColor),
      titleMedium: GoogleFonts.nunito(color: textColor),
      titleSmall: GoogleFonts.nunito(color: textColor.withOpacity(.7)),
      bodyLarge: GoogleFonts.nunito(color: textColor),
      bodyMedium: GoogleFonts.nunito(color: textColor),
      bodySmall: GoogleFonts.nunito(color: textColor),
      labelLarge: GoogleFonts.nunito(color: textColor.withOpacity(.7)),
      labelMedium: GoogleFonts.nunito(color: textColor.withOpacity(.7)),
      labelSmall: GoogleFonts.nunito(color: textColor.withOpacity(.7)),
    );
  }

  static ListTileThemeData _buildListTileTheme({required Color textColor}) {
    return ListTileThemeData(
      iconColor: Colors.grey[850],
      horizontalTitleGap: 0,
      titleTextStyle: TextStyle(color: textColor),
      subtitleTextStyle: TextStyle(color: textColor.withOpacity(.7)),
    );
  }

  static IconThemeData _buildIconTheme({required Color iconColor}) {
    return IconThemeData(size: 16, color: iconColor);
  }

  static InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
      isDense: true,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: AppColors.primary,
          width: 1.0,
        ),
      ),
      border: InputBorder.none,
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      fillColor: Colors.grey.withOpacity(.1),
      filled: true,
      focusColor: AppColors.primaryMaterialColor[350],
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: Colors.grey[300]!,
        ),
      ),
    );
  }

  static CardTheme _buildCardTheme({required Color cardColor}) {
    return CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: cardColor,
    );
  }

  static ElevatedButtonThemeData _buildElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryMaterialColor[800],
        disabledBackgroundColor: AppColors.primaryMaterialColor[800],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        textStyle:
            GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }

  static PopupMenuThemeData _buildPopupMenuTheme(
      {required Color backgroundColor}) {
    return PopupMenuThemeData(
      color: backgroundColor,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  static CheckboxThemeData _buildCheckboxTheme() {
    return CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith((states) =>
          (states.contains(MaterialState.selected))
              ? AppColors.primaryMaterialColor[500]
              : null),
    );
  }
}
