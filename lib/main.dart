import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _buttonColor = Colors.blue;

  void _changeColor() {
    setState(() {
      _buttonColor = _buttonColor == Colors.blue ? Colors.red : Colors.blue;
      print('button clicked');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _changeColor,
              style: ElevatedButton.styleFrom(
                backgroundColor: _buttonColor,
              ),
              child: const Text('Click Me'),
            ),
            const SizedBox(height: 8),
            Card(
              shape: const CircleBorder(),
              elevation: 5,
              child: ClipOval(
                child: Image.network(
                'https://picsum.photos/250/250',
              ),
                
              )
              
            ),
          ],
        ),
      ),
    );
  }
}
