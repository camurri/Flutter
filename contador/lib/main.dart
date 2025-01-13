import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0 ;

  void decrementCounter() {
    // Chama o método setState para reconstruir a interface com o novo valor do contador.

    setState(() {
      // Decrementa o contador em 1.
      counter--;
    });
  }

  void incrementCounter() {
    // Chama o método setState para reconstruir a interface com o novo valor do contador.
    setState(() {
      // Incrementa o contador em 1.
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bkg.jpg'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Pode entrar!',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                Text(counter.toString(),
                    style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: decrementCounter,
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Text('Saiu',
                          style: TextStyle(color: Colors.black, fontSize: 22)),
                    ),
                    SizedBox(width: 32),
                    TextButton(
                      onPressed: incrementCounter,
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Text('Entrou',
                          style: TextStyle(color: Colors.black, fontSize: 22)),
                    ),
                  ],
                )
              ],
            )));
  }
}
