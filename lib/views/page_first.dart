import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget{
  @override
  State createState()=> new FirstPageState();
}

class FirstPageState  extends State<FirstPage>{
  @override
  Widget build(BuildContext context) {
     return new Scaffold(
       appBar:new AppBar(
         title: new Text("我是界面1"),
       ),//Appbar
       body: new Center(
         child: new Text("这是第一nkjh个界面"),
       ),//center
     );//Scaffold
  }
}