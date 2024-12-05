import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {}, // Añadido onPressed vacío para evitar errores
      ),
      body: Container(
        color: Colors.red,
         child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
          ),
          const Text('Estamos en login page')
        ],
      )));
  }
}