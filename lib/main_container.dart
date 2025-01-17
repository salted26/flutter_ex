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
        backgroundColor: Colors.amber,
        title: const Text("Flutter Title Ex"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.amberAccent,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
                margin: const EdgeInsets.only(top: 50, left: 50),
              color: Colors.lightBlueAccent
            ),
            Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 100, left: 100),
                color: Colors.redAccent
            ),
            Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 150, left: 150),
                color: Colors.green
            ),
            Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 200, left: 200),
                color: Colors.purple
            ),
          ],
        )
      )
    );
  }
}
