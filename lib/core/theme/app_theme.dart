import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Classe que define o tema da aplicação
/// Contém as cores e estilos usados em todo o app
class AppTheme {
  // Paleta de cores do tema escuro
  static const Color primaryColor = Color(0xFFFF6B6B);      // Rosa/Vermelho - Cor principal
  static const Color secondaryColor = Color(0xFF4ECDC4);    // Turquesa - Cor secundária
  static const Color accentColor = Color(0xFFFFE66D);       // Amarelo - Cor de destaque
  static const Color backgroundColor = Color(0xFF1A1A2E);   // Azul escuro - Fundo
  static const Color surfaceColor = Color(0xFF16213E);      // Azul médio - Superfícies
  static const Color cardColor = Color(0xFF0F3460);         // Azul - Cards

  /// Tema escuro customizado da aplicação
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,                      // Usa Material Design 3
    brightness: Brightness.dark,             // Modo escuro
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      tertiary: accentColor,
      surface: surfaceColor,
      background: backgroundColor,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    cardTheme: CardThemeData(
      color: cardColor,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: surfaceColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: cardColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    ),
  );
}

