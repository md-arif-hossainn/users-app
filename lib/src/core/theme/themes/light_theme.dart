import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/theme/colors/theme_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  const LightTheme._();

  static final seedColor = const Color(0xFF4BC382);

  static final colorScheme = ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.light,
  );

  static final themeData = ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.onSurface,
      elevation: 0,
    ),
    cardColor: colorScheme.surface,
    dialogTheme: DialogThemeData(
      backgroundColor: colorScheme.surface,
    ),
    textTheme: GoogleFonts.robotoTextTheme(
      ThemeData.light().textTheme.apply(
        bodyColor: colorScheme.onSurface,
        displayColor: colorScheme.onSurface,
      ),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colorScheme.primary,
      unselectedLabelColor: colorScheme.onSurface.withValues(alpha: 0.6),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: colorScheme.primary, width: 2),
      ),
    ),
    iconTheme: IconThemeData(color: colorScheme.onSurface),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: colorScheme.onSurface.withValues(alpha: 0.6),
      backgroundColor: colorScheme.surface,
    ),
    extensions: const [
      ThemeColors(
        shimmerBase: Color(0xFFE0E0E0),
        shimmerHighlight: Color(0xFFF5F5F5),
      ),
    ],
  );
}

