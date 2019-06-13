import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared/shared.dart';

import 'src/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ListenableProvider.value(value: CounterState()..init()),
        ],
        child: MaterialApp(
          title: Strings.title,
          theme: Themes.light,
          darkTheme: Themes.dark,
          home: HomeScreen(),
        ));
  }
}
