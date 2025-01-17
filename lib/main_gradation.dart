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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //     colors: [
          //       Colors.blue[100] as Color,
          //       Colors.blue[200] as Color,
          //       Colors.blue[800] as Color,
          //     ],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   stops: const [0.1, 0.5, 1.0],
          // ),
          gradient: RadialGradient(
              colors: [
                Colors.blue[100] as Color,
                Colors.blue[200] as Color,
                Colors.blue[800] as Color,
              ],
            stops: const [0.1, 0.5, 1.0],
            radius: 1.0, // radial 범위
          )
        ),
      )
    );
  }
}
