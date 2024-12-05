import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Container(
        width: double.infinity,
        color: const Color(0xFFE62F16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset(
                'images/path_logo.png',
                width: 200,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 200),
              child: Text(
                'Beautiful, Private Sharing ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 224, 203, 203),
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                foregroundColor: const Color(0xFFE62F16),
                minimumSize: const Size(250, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                'Sign up',
                style: TextStyle(
                  color: Color(0xFFE62F16),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Already have a path account?',
                style: TextStyle(
                  color: Color.fromARGB(255, 224, 203, 203),
                  fontSize: 16,
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color.fromARGB(255, 224, 203, 203),
                  width: 1,
                ),
                backgroundColor: const Color(0xFFE62F16),
                foregroundColor: const Color.fromARGB(255, 224, 203, 203),
                minimumSize: const Size(250, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Color.fromARGB(255, 224, 203, 203),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: SizedBox(
                width: 250, // Ajusta el ancho según sea necesario
                child: RichText(
                  text: const TextSpan(
                    text: 'By using Path, you agree to Paths ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 224, 203, 203),
                      fontSize: 15
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Terms of Use',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          decoration: TextDecoration.underline, decorationColor: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          decoration: TextDecoration.underline, decorationColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
