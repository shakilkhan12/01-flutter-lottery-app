import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MyApp());
}

// https://youtu.be/ULg_aBP9TBI?list=PLFyjjoCMAPtxq8V9fuVmgsYKLNIKqSEV4&t=3601
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
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
              child: Text('Lottery winning number is 5'),
            ),
            const SizedBox(height: 20),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: x == 5 ? Colors.green.shade200 : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: x == 5
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.green,
                            size: 28,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                              'Congratulations you have won the lottery your winning number is $x')
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 28,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                              'Batter luck next time, your number is $x try again.')
                        ],
                      ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print(random.nextInt(10));
              x = random.nextInt(10);
              setState(() {});
            },
            child: Icon(Icons.refresh)),
      ),
    );
  }
}
