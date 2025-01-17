import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  late SharedPreferences _prefs;
  String _username = "";
  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Future<void> _saveUsername() async {
    setState(() {
      _username = _usernameController.text;
      _prefs.setString("currentUsername", _username);
    });
  }

  Future<void> _getUsername() async{
    final SharedPreferencesAsync prefs = SharedPreferencesAsync();
    setState(() async {
      _username = await _prefs.getString("currentUsername") ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Flutter Title Ex")
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("현재 이름은? $_username"),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _usernameController,
                textAlign: TextAlign.left,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "input your name"
                ),
              ),
            ),
            TextButton(
                onPressed: () => _saveUsername(),
                child: const Text("저장")
            )
          ],
        ),
      )
    );
  }
}
