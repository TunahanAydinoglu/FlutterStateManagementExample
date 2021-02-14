import 'package:flutter/material.dart';
import 'package:tryproject/src/screens/base/view/todo_view.dart';
import 'package:tryproject/src/screens/fis_detay.dart';
// import 'package:tryproject/src/screens/todo/view/todo_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobx Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FisDetay(),
    );
  }
}
