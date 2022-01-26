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
    Quote(text:'The truth is rarely pure and never simple', author: 'Rich Men' ),
    Quote(text:'The truth is rarely pure and never simple', author: 'Rich Men' ),
    Quote(text:'The truth is rarely pure and never simple', author: 'Rich Men' ),
  ];

 Widget cardQuotes(el){
   return QuoteCard(
     e: el,
     delete: ()=>{
       setState(()=>{
         quotes.remove(el)
       })
     }
     );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.blue,
      title: const Text("Quotes List"),
      centerTitle: true,
      ),
      body: ListView(
        children: quotes.map((el) => cardQuotes(el)).toList()
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {

 final Quote e;
 final Function() delete;
 QuoteCard({required this.e, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            e.text,
            style: const TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 10.0),
          Text(e.author),
          const SizedBox(height: 12.0),
          TextButton.icon(onPressed: delete, icon: const Icon(Icons.delete), label: const Text("delete"))
        ]),
      ),
    );
  }
}