import 'package:flutter/material.dart';

class Especiais extends StatelessWidget {
  const Especiais({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trabalhos Especiais'), // Defina o título da AppBar
        backgroundColor: Colors.blue, // Cor de fundo da AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star, size: 50, color: Colors.yellow),
                    SizedBox(height: 10),
                    Text(
                      'Trabalho Especial 1',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Descrição breve sobre o trabalho.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
