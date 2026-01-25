import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      
      body: Column(
        children: [
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.white,
          ),
          Expanded(
              child: DicePage(),),
        ],
      ),
    ));
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Row(
        children: [

          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                print('Left button was clicked');
              },
              child: Image(
                image: AssetImage('images/dice6.png'),

              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {},
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
