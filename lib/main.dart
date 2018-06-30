import 'package:flutter/material.dart';
import './views/page_first.dart';
import './views/page_second.dart';
import './views/page_third.dart';

void main() {
  runApp(new MaterialApp(home: new FlutterView(),));
}

class FlutterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter View',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new FirstPage(),
          new SecondPage(),
          new ThirdPage(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.orangeAccent,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(text: "列表", icon: new Icon(Icons.home)),
            new Tab(text: "通知", icon: new Icon(Icons.message)),
            new Tab(text: "我的", icon: new Icon(Icons.cloud)),

          ],//tab
        ),//tabbar
      ),//meterial
    );//Scaffold
  }
}
