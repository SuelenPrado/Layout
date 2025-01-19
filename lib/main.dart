import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Site Web Colorido',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saudações, sinta-se à vontade ao navegar'),
        backgroundColor: const Color.fromARGB(255, 200, 123, 118), // Defina a cor desejada aqui
        centerTitle: true, // Centraliza o título
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(244, 17, 117, 17),  // Cor de fundo definida
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(  // Envolve a saudação com Center
                child: Text(
                  'Bem-vindo ao Talento Tech',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print('Botão pressionado!');
                },
                child: Text('Avançar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
