import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('imagens/jose.jpg'),
            ),
            Text('José Augusto Pereira',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cinzel',
                )),
            Text(
              'Estudante de Engenharia de Computação',
              style: TextStyle(
                  fontFamily: 'SourceCode',
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ));
  }
}
