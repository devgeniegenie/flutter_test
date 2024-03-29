import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text("Test Title")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 50, left: 50),
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 100, left: 100),
              color: Colors.green,
            ),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 150, left: 150),
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
