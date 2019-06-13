import 'package:flutter_web/material.dart';
import 'package:shared_core/shared.dart';

import 'src/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.title,
      theme: Themes.light,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
