import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextStyles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("文本及样式"),
      ),
      body: new Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Hello world",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                fontFamily: "Courier",
                background: new Paint()..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: "Home: "),
            TextSpan(
              text: "https://flutterchina.club",
              style: TextStyle(color: Colors.blue),
            ),
          ])),
          DefaultTextStyle(
            //1.设置文本默认样式
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 20.0,
              fontFamily: "iconfont"
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("你好"),
                Text("I am Jack"),
                Text(
                  "I am Jack",
                  style: TextStyle(
                      inherit: false, //2.不继承默认样式
                      color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
