import 'package:flutter/material.dart';
import '../themes.dart'; // Importe o arquivo de temas

class Sociais extends StatelessWidget {
  const Sociais({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nossas Redes Sociais'),
        backgroundColor: AppColors.primaryColor, // Cor do AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),  // Adicionado padding geral
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // Alinha os botões com espaçamento igual
          children: [
            _socialButton(context, 'Facebook', Icons.facebook, 'https://facebook.com'),
            _socialButton(context, 'Instagram', Icons.message, 'https://instagram.com'),
            _socialButton(context, 'YouTube', Icons.video_library, 'https://youtube.com'),
          ],
        ),
      ),
    );
  }

  Container _socialButton(BuildContext context, String title, IconData icon, String url) {
    return Container(
      height: 620,  // Altura maior que a largura para dar o charme desejado
      width: 100,   // Largura fixa para os botões
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),  // Borda arredondada
        ),
        child: ElevatedButton.icon(
          onPressed: () {
            // Navegação para o link da rede social
            print("Abrindo $url");
          },
          icon: Icon(icon),
          label: Text(title),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: AppColors.buttonColor,  // Cor do texto do botão
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),  // Bordas arredondadas
            ),
          ),
        ),
      ),
    );
  }
}
