import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: abrirLinkedin,
                      child: Text('linkedin',
                          style: TextStyle(
                              fontFamily: 'SourceCode',
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: abrirGitHub,
                      child: Text('GitHub',
                          style: TextStyle(
                              fontFamily: 'SourceCode',
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

void abrirLinkedin() async {
  const url = 'https://www.linkedin.com/in/josé-augusto-pereira-15904970';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

void abrirGitHub() async {
  const url = 'https://github.com/eujap';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Não Foi possivel abrir $url';
  }
}
