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
  String url = 'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDA0MTZfNDkg%2FMDAxNzEzMjM1NjU0MjA5.HFyngJYBzmiDG0VMS1YKl7dMgnssSedDBDzDiTuA2Lkg.a--S8d2HBwPn8qIAfNxMDa3M80KoAvDGEHRoJUSy_4gg.JPEG%2FDSC05051-%25C7%25E2%25BB%25F3%25B5%25CA-%25B3%25EB%25C0%25CC%25C1%25EE_%25B0%25A8%25BC%25D2-%25C6%25ED%25C1%25FD.jpg';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Flutter Title Ex")
      ),
      body: Container(
        child: Center(
          child: Image(
            width: MediaQuery.of(context).size.width,
            height: 700,
            image: NetworkImage(
                url,
              ),
            fit: BoxFit.fill,
          ),
        ),
      )
    );
  }
}
