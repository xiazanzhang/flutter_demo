import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/newroute.dart';
import 'TextStyles.dart';
import 'button.dart';
import 'home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        initialRoute: "/",
        theme: new ThemeData(
          fontFamily: "kuaile",
          primarySwatch: Colors.yellow,
        ),
        routes: {
          "/": (context) => MyHomePage(title: '学习Flutter'),
          "home": (context) =>
              Home(text: ModalRoute.of(context).settings.arguments),
          "newroute": (context) => NewRoute(),
          "count": (context) => CounterWidget(),
          "cupertinoTestRoute": (context) => CupertinoTestRoute(),
          "text": (context) => TextStyles(),
          "button": (context) => Button(),
        },
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (context) {
            String routeName = settings.name;
            print(routeName);
            return Home(text: "");
            // 如果访问的路由页需要登录，但当前未登录，则直接返回登录页路由，
            // 引导用户登录；其它情况则正常打开路由。
          });
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final word = WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text("我是随机数：" + word.toString()),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              child: Text("打开页面一"),
              textColor: Colors.blue,
              onPressed: () async {
                var result = await Navigator.of(context)
                    .pushNamed("home", arguments: _counter.toString());
                print("路由返回值：$result");
              },
            ),
            RaisedButton(
              child: Text("打开页面二"),
              textColor: Colors.blue,
              onPressed: () async {
                var result = await Navigator.of(context).pushNamed("count");
                print("路由返回值：$result");
              },
            ),
            RaisedButton(
              child: Text("打开页面三"),
              textColor: Colors.blue,
              onPressed: () async {
                var result =
                    await Navigator.of(context).pushNamed("cupertinoTestRoute");
                print("路由返回值：$result");
              },
            ),
            RandomWordsWidget(),
            RaisedButton(
              child: Text("文本字体样式"),
              color: Colors.yellow,
              onPressed: () => {Navigator.of(context).pushNamed("text")},
            ),
            RaisedButton(
              child: Text("按钮"),
              color: Colors.yellow,
              onPressed: () => {Navigator.of(context).pushNamed("button")},
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key key, this.initValue: 0});

  final int initValue;

  @override
  _CounterWidgetState createState() => new _CounterWidgetState();
}

class CupertinoTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino Demo"),
      ),
      child: Center(
        child: CupertinoButton(
            color: CupertinoColors.activeBlue,
            child: Text("Press"),
            onPressed: () {}),
      ),
    );
  }
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    super.initState();
    //初始化状态
    _counter = widget.initValue;
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: new AppBar(
        title: Text("生命周期"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.yellow,
          textColor: Colors.white,
          child: Text('$_counter'),
          //点击后计数器自增
          onPressed: () => setState(
            () => ++_counter,
          ),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
