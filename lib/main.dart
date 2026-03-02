
import 'package:flutter/material.dart';
import 'package:myapp/inicio_screen.dart';
import 'package:myapp/home_screen.dart';
import 'package:myapp/detalle_screen.dart';

void main() {
  runApp(const ReposteriaCakes());
}

class ReposteriaCakes extends StatelessWidget {
  const ReposteriaCakes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cakes Repostería',
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
      },
      theme: ThemeData(
        fontFamily: 'sans-serif',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.pink[300],
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
    );
  }
}
