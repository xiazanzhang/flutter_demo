import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: Padding(
            padding: EdgeInsets.all(18),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text("传参：$text"),
                  RaisedButton(
                    onPressed: () => Navigator.pop(context, "我是返回值"),
                    child: Text("返回"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed("newroute", arguments: "hi");
                    },
                    child: Text("打开一个新页面"),
                  )
                ],
              ),
            )));
  }
}
