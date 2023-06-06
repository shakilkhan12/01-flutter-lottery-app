import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// https://youtu.be/ULg_aBP9TBI?list=PLFyjjoCMAPtxq8V9fuVmgsYKLNIKqSEV4&t=3305
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 4;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Lottery winning number is $x'),
            ),
            Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                child: Column(
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 28,
                    ),
                    Text('Batter luck next time, your number is $x try again.')
                  ],
                ))
          ],
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.refresh)),
      ),
    );
  }
}
