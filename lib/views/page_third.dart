import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget{
  @override
  State createState()=> new ThirdPageState();
}

class ThirdPageState  extends State<ThirdPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title: new Text("我是界面3"),
      ),//Appbar
      body: new Center(
        child: new Text("这是第三个界面"),
      ),//center
    );//Scaffold
  }
}