import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login Page')),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {}, // Añadido onPressed vacío para evitar errores
        ),
        body: Container(
            color: const Color(0xFFE62F16),
            child: Column(
              
              children: [
                Container(
                  child: Image.asset('images/path_logo.png', width: 200,),
                ),
                Container(child: Text('Beautiful, Private Sharing')
                ),
                SizedBox(
                  width: double.infinity,
                  ),
                
            
              ],
            )));
  }
}
