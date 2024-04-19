import 'package:flutter/material.dart';
import 'package:test/mongodb.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MongoDatabase md = MongoDatabase();
  await md.connect();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      home: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
