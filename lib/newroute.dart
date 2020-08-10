import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ages = ModalRoute.of(context).settings.arguments;
    print(ages);

    final str = new WordPair.random();

    print(str);

    return Scaffold(
      appBar: new AppBar(
        title: new Text("新的页面"),
      ),
      body: new Center(
        child: new Text("我是随机内容:$str"),
      ),
    );
  }
}
