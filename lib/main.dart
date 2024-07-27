import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_recommendation_apps/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
          bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        fontFamily: GoogleFonts.ptSans().fontFamily,
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color(0xFF134B70)).copyWith(
          surface: const Color(0xFF134B70),
          primary: const Color(0xFF134B70),
          onSurface: Colors.black,
        ),
        scaffoldBackgroundColor: const Color(0xFF134B70),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF201E43), // Warna AppBar
          foregroundColor: Colors.white, // Warna teks pada AppBar
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
