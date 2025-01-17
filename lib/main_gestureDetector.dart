import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title : 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amberAccent,
        title: const Text("Flutter Title Ex")
      ),
      body: Center(
        // child: TextButton(
        //     onPressed: () => print("happy"),
        //     child: const Text("text button")
        // ),
        child: GestureDetector(
          onTap: () => print("GestureDetector used."),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.lightBlueAccent,
          ),
        ),
      )
    );
  }
}
