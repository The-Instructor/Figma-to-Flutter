import 'package:flutter/material.dart';

class AppTheme {

  // Light Theme Configuration
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF000000), // Replace with your Figma light primary color
        brightness: Brightness.light,
        surface: Color(0xFFFFFFFF),
        onSurface: Color(0xFF000000),
        onSurfaceVariant: Color(0xFF000000),
        secondary: Color(0xFF000000),
        surfaceContainerHigh: Color(0xFFFFFFFF),
      ),
    );
  }

  // Dark Theme Configuration
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFFFFFFF), // Replace with your Figma dark primary color
        brightness: Brightness.dark,
        onSurface: Color(0xFFFFFFFF),
        secondary: Color(0xFF00FFCC),
        // outline: Color(0xFF00FFCC),
        surfaceContainerHigh: Color(0xFFF08E06),
        onSurfaceVariant: Color(0xFF000000),
      ),
    ); 
  }
}