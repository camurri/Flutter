import 'package:flutter/material.dart';
import '../themes.dart'; // Importe o arquivo de temas

class Pontos extends StatelessWidget {
  const Pontos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pontos do Terreiro'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: const Center(
        child: Text(
          'Pontos do terreiro',
          style: TextStyle(color: AppColors.textColor),
        ),
      ),
    );
  }
}
