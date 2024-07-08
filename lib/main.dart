import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/cart_provider.dart';
import 'package:shop_app_flutter/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  TextTheme? get textTheme => null;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Shopping app',
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
              bodyMedium: GoogleFonts.lato(),
              titleMedium: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              titleLarge: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              bodySmall:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(251, 255, 238, 0),
            primary: const Color.fromARGB(251, 255, 238, 0),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          ),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
