import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  var frases = [
    'A vida é 10% o que acontece e 90% como reagimos a isso.',
    'A única maneira de fazer um ótimo trabalho é amar o que você faz.',
    'O sucesso é a soma de pequenos esforços repetidos dia após dia.',
    'Acredite em si mesmo e todo o resto virá naturalmente.',
    'A persistência é o caminho do êxito.',
  ];

  var fraseGerada = 'Clique abaixo para gerar uma frase!';

  void gerarFrase() {
    var numeroAleatorio = (frases.length * 0.999999).toInt();
    fraseGerada = frases[numeroAleatorio];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Gerador de Frases',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.green),
                child: Image.asset('images/imga.jpg', width: 300),
              ),

              Text(
                fraseGerada,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  gerarFrase();
                  (context as Element).markNeedsBuild();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                child: Text('Gerar Frase', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
