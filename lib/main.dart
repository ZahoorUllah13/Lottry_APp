import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('lottery App'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(child: Text('the win number is 5')),
              const SizedBox(
                height: 10,
              ),
              Container(
                height:x==5?300: 200,
                width: 200,
                decoration: BoxDecoration(
                    color:x==5?Colors.cyanAccent: Colors.grey.withOpacity(.6),
                    borderRadius: BorderRadius.circular(20)),
                child: x == 5
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'congrats you win the lottery $x \n',
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'number not match try next time\n'
                              ' best of luck try again $x',
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              x = (random.nextInt(15));
              print(x);
              setState(() {});
            },
            child: Icon(Icons.refresh),
          )),
    );
  }
}
