import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'src/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.title,
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
