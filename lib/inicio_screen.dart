import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.network(
                'https://raw.githubusercontent.com/Yaretzi-debug/imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/logo%20(2).png',
                height: 150,
              ),
              const SizedBox(height: 20),
              const Text(
                "bake and\ndecorate your cakes",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400, color: Colors.black87),
              ),
              const SizedBox(height: 10),
              const Text(
                "Tagle Pacheco Cristal Yaretzi - 6I",
                style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold, fontSize: 12),
              ),
              const SizedBox(height: 40),
              Center(
                child: Image.network(
                  'https://raw.githubusercontent.com/tu_usuario/tu_repo/main/chica_repostera.png',
                  height: 250,
                  errorBuilder: (context, error, stackTrace) => 
                      Icon(Icons.cake_outlined, size: 200, color: Colors.pink[50]),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[300],
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                ),
                onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
                child: const Text("Sign up", style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
              const SizedBox(height: 15),
              const Text("I have an account", style: TextStyle(color: Colors.grey, fontSize: 14)),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
