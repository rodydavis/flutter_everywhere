import 'package:project_web/ui/common/index.dart';
import 'package:flutter_web/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: <Widget>[
        SafeArea(
          bottom: false,
          child: TemplateSearchBar(),
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              TemplateSection(
                name: 'Travel',
                count: 20,
              ),
              TemplateSection(
                name: 'Fashion',
                count: 50,
              ),
              TemplateSection(
                name: 'Style',
                count: 30,
              ),
              TemplateSection(
                name: 'Design',
                count: 100,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
