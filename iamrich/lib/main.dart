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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('I Am Rich'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
            // image: NetworkImage(
            //     'https://www.cats.org.uk/media/13139/220325case013.jpg'),
          ),
        ),
      ),
    );
  }
}
