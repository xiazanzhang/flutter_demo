import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
// accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
// error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
// fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    return Scaffold(
        appBar: new AppBar(title: Text("按钮")),
        body: ListView(padding: EdgeInsets.all(30), children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 60),
              color: Colors.red,
              child: Stack(children: <Widget>[
                Text(
                  "我是一个容器,我是有底边距的",
                ),
                Positioned(
                  left: 18.0,
                  child: Text("I am Jack"),
                ),
              ])),
          Text(
            icons,
            style: TextStyle(
                fontFamily: "MaterialIcons",
                fontSize: 24.0,
                color: Colors.green),
          ),
          RaisedButton(
            child: Text("漂浮按钮"),
            onPressed: () {
              print("我被点击了");
            },
          ),
          FlatButton(
            child: Text("扁平按钮"),
            color: Colors.red,
            focusColor: Colors.yellow,
            textColor: Colors.white,
            splashColor: Colors.blue,
            onPressed: () {},
          ),
          OutlineButton(
            child: Text("带边框的"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.all_inclusive),
            color: Colors.red,
            onPressed: () {},
          ),
          RaisedButton.icon(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            icon: Icon(Icons.ac_unit),
            label: Text("下雪了"),
            colorBrightness: Brightness.dark,
            color: Color(0x000000),
            onPressed: () {},
          ),
          FlatButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text("Submit"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {},
          ),
          Image.asset(
            "assets/images/basicprofile.png",
            width: 100,
            height: 100,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text("哈哈哈"), Text("哈哈哈")]),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                " 你好啊 ",
                style: TextStyle(fontSize: 30.0),
              ),
              Text(" I am Jack "),
            ],
          ),
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              verticalDirection: VerticalDirection.up,
              crossAxisAlignment: CrossAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text("哈哈哈"),
                Text(
                  "我反啦~",
                  style: TextStyle(fontSize: 30, color: Colors.yellow),
                )
              ]),
          Expanded(
              child: Container(
            margin: EdgeInsets.fromLTRB(0, 45, 0, 45),
            color: Colors.orange,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Text("hi"),
                  Text(
                    "我是乔治",
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  )
                ]),
          )),
          Wrap(
              spacing: 80,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: <Widget>[
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('A')),
                  label: new Text('Hamilton'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('B')),
                  label: new Text('Hamilton'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('C')),
                  label: new Text('Hamilton'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('D')),
                  label: new Text('Hamilton'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('E')),
                  label: new Text('Hamilton'),
                )
              ]),
          Wrap(
              spacing: 80,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: <Widget>[
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('A')),
                  label: new Text('Hamilton'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('B')),
                  label: new Text('Hamilton'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('C')),
                  label: new Text('Hamilton'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('D')),
                  label: new Text('Hamilton'),
                ),
                new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('E')),
                  label: new Text('Hamilton'),
                )
              ]),
        ]));
  }
}
