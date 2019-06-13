import 'package:flutter_web/material.dart';

class TemplateSection extends StatelessWidget {
  const TemplateSection({
    Key key,
    @required this.name,
    this.count = 1,
  }) : super(key: key);

  final String name;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 27,
                  ),
                ),
              ),
            ],
          )),
          Container(
            height: 180,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: count,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 115.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Placeholder(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
