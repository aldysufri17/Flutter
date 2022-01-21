import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({ Key? key }) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  List<Quote> quotes = [
    Quote(text:'Be yourself; everyone else is already taken', author: 'Rich Men' ),
    Quote(text:'I have nothing to declare except my genius', author: 'Rich Men' ),
    Quote(text:'The truth is rarely pure and never simple', author: 'Rich Men' ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.greenAccent,
      title: const Text("Quotes List"),
      centerTitle: true,
      ),
      body: Column(
        children: quotes.map((e) => Text('${e.text} - ${e.author}')).toList()
      ),
    );
  }
}