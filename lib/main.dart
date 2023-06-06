import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// https://youtu.be/ULg_aBP9TBI?list=PLFyjjoCMAPtxq8V9fuVmgsYKLNIKqSEV4&t=2032
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lottery App')),
        ),
        body: Column(
          children: [],
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.refresh)),
      ),
    );
  }
}
