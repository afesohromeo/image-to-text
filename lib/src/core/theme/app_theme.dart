import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme.dart';

class AppTheme {
  static const TextTheme lightTextTheme = TextTheme(
      //   titleLarge: GoogleFonts.quicksand(
      //       fontSize: 25.0,
      //       color: AppColors.white1,
      //       fontWeight: FontWeight.bold),
      //   titleMedium: GoogleFonts.quicksand(
      //       fontSize: 16.0,
      //       color: AppColors.black1,
      //       fontWeight: FontWeight.w700),
      //   titleSmall: GoogleFonts.quicksand(
      //     fontSize: 14.0,
      //     color: AppColors.green3,
      //   ),
      //   bodyLarge: GoogleFonts.quicksand(
      //     fontSize: 16.0,
      //     color: AppColors.black1,
      //   ),
      //   bodyMedium: GoogleFonts.quicksand(
      //       fontSize: 14.0,
      //       color: AppColors.black1,
      //       fontWeight: FontWeight.w600),
      //   bodySmall: GoogleFonts.quicksand(
      //     fontSize: 12.0,
      //     color: AppColors.black1,
      //   ),
      //   displayLarge: GoogleFonts.quicksand(
      //     fontSize: 25.0,
      //     fontWeight: FontWeight.bold,
      //     color: AppColors.primary,
      //   ),
      //   displayMedium: GoogleFonts.quicksand(
      //     fontSize: 16.0,
      //     fontWeight: FontWeight.w700,
      //     color: AppColors.black1,
      //   ),
      //   displaySmall: GoogleFonts.quicksand(
      //     fontSize: 16.0,
      //     fontWeight: FontWeight.w500,
      //     color: AppColors.secondary,
      //   ),
      //   headlineMedium: GoogleFonts.quicksand(
      //     fontSize: 18.0,
      //     fontWeight: FontWeight.w500,
      //     color: AppColors.grey1,
      //   ),
      //   headlineSmall: GoogleFonts.quicksand(
      //     fontSize: 14.0,
      //     fontWeight: FontWeight.w700,
      //     color: AppColors.label,
      //   ),
      //   headlineLarge: GoogleFonts.quicksand(
      //     fontSize: 16.0,
      //     fontWeight: FontWeight.w700,
      //     // color: AppColors.black1,
      //   ),
      // );

      );
  static const TextTheme darkTextTheme = TextTheme(
      // bodyLarge: GoogleFonts.quicksand(
      //   fontSize: 14.0,
      //   fontWeight: FontWeight.w700,
      //   color: AppColors.white1,
      // ),
      // displayLarge: GoogleFonts.quicksand(
      //   fontSize: 32.0,
      //   fontWeight: FontWeight.bold,
      //   color: AppColors.grey4,
      // ),
      // displayMedium: GoogleFonts.quicksand(
      //   fontSize: 21.0,
      //   fontWeight: FontWeight.w700,
      //   color: AppColors.grey4,
      // ),
      // displaySmall: GoogleFonts.quicksand(
      //   fontSize: 18.0,
      //   fontWeight: FontWeight.w700,
      //   color: AppColors.grey4,
      // ),
      // headlineMedium: GoogleFonts.quicksand(
      //   fontSize: 18.0,
      //   fontWeight: FontWeight.w500,
      //   color: AppColors.grey2,
      // ),
      );

  static ThemeData get light {
    return ThemeData(
      primaryTextTheme: AppTheme.lightTextTheme,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white1,
      brightness: Brightness.light,
      colorScheme: lightColorScheme,
      checkboxTheme: CheckboxThemeData(
        checkColor: WidgetStateProperty.all(AppColors.white1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        fillColor: WidgetStateProperty.all(AppColors.primary),
      ),
      appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        backgroundColor: AppColors.primary,
        iconTheme: IconThemeData(
          size: 25,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      dialogTheme: DialogTheme(
          elevation: 10,
          backgroundColor: AppColors.white1,
          surfaceTintColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      bottomSheetTheme: const BottomSheetThemeData(
        elevation: 10,
        backgroundColor: AppColors.white1,
        surfaceTintColor: Colors.transparent,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: AppColors.white1,
        surfaceTintColor: Colors.transparent,
      ),
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: AppColors.white1,
        surfaceTintColor: Colors.transparent,
      ),
      tabBarTheme: const TabBarTheme(
          indicatorSize: TabBarIndicatorSize.label,
          dividerHeight: 0,
          unselectedLabelColor: AppColors.grey1),
      cardTheme: const CardTheme(
        color: AppColors.white1,
        surfaceTintColor: Colors.transparent,
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.grey1,
      ),
      expansionTileTheme: ExpansionTileThemeData(
        textColor: AppColors.primary,
        collapsedTextColor: AppColors.white1,
        iconColor: AppColors.primary,
        collapsedIconColor: AppColors.secondary,
        collapsedBackgroundColor: AppColors.green2,
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
          inputDecorationTheme: InputDecorationTheme(
              iconColor: AppColors.black1,
              fillColor: Colors.blue,
              prefixIconColor: Colors.blue,
              labelStyle: AppTheme.lightTextTheme.displayLarge)),
      useMaterial3: true,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          backgroundColor: Colors.transparent),
      textTheme: lightTextTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: AppColors.primary)),
    );
  }

  static ThemeData get dark {
    return ThemeData(
        primaryTextTheme: AppTheme.darkTextTheme,
        primaryColor: AppColors.black1,
        scaffoldBackgroundColor: AppColors.white1,
        brightness: Brightness.dark,
        colorScheme: darkColorScheme,
        useMaterial3: true);
  }
}
