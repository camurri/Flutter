import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Im rich'),
        ),
        body: Center(
            child: Image(
          image: AssetImage('images/diamond.png'),
        )),
      ),
    ),
  );
}
