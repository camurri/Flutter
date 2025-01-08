import 'package:app/pages/pontos.dart';
import 'package:app/pages/sociais.dart';
import 'package:flutter/material.dart';
//import 'package:cached_network_image/cached_network_image.dart';
import 'especiais.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  // Função de navegação
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tvb'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bem-vindo ao TVB!',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              Carousel(),
              const SizedBox(height: 20),
              _buildNavigationButton(
                context,
                label: "Nossas redes Sociais",
                icon: Icons.link,
                destination: const Sociais(),
              ),
              _buildNavigationButton(
                context,
                label: "Trabalhos especiais",
                icon: Icons.star,
                destination: const Especiais(),
              ),
              _buildNavigationButton(
                context,
                label: "Pontos do terreiro",
                icon: Icons.location_on,
                destination: const Pontos(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
      ),
    );
  }

  ElevatedButton _buildNavigationButton(BuildContext context,
      {required String label,
        required IconData icon,
        required Widget destination}) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      icon: Icon(icon),
      label: Text(label),
    );
  }
}



class Carousel extends StatelessWidget {
  final List<String> imageList = [
    'https://picsum.photos/600/300?1',
    'https://picsum.photos/600/300?2',
    'https://picsum.photos/600/300?3',
  ];

  Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                imageList[index],
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
