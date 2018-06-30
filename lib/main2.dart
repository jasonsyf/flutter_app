import 'package:flutter/material.dart';

//void main() => runApp(new MyApp());
void main(){
  runApp(new MaterialApp(home: new ListDemo(),));
}
class ListDemo extends StatefulWidget{
  @override
  _ListDemoState createState(){
    return new _ListDemoState();
  }
}
class _ListDemoState extends State<ListDemo>{
//buildListTile相当于ListView的Adapter
  Widget buildListTile(BuildContext context,String item){
    return new ListTile(
      isThreeLine: true,//子item的是否为三行
      dense: false,
      leading: new CircleAvatar(child: new Text(item),),//左侧首字母图标显示，不显示则传null
      title: new Text('子item的标题'),//子item的标题
      subtitle: new Text('子item的内容'),//子item的内容
      trailing: new Icon(Icons.arrow_right,color: Colors.green,),//显示右侧的箭头，不显示则传null
    );
  }
  @override
  Widget build(BuildContext context) {
    List<String> items=<String>['A','B','C','D','E','F','G','H','J'];
    Iterable<Widget> listTitles=items.map((String item){//将items的内容设置给Adapter
      return buildListTile(context,item);
    });
    listTitles=ListTile.divideTiles(context: context,tiles: listTitles);//给Listview设置分隔线
    return new Scaffold(appBar: new AppBar(title: new Text('ListViewDemo'),),
      body: new Scrollbar(child: new ListView(
        children: listTitles.toList(),//添加ListView控件
      )),);
  }
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter App',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: '我是Flutter的首页，哈哈哈'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              '你点击按钮的次数',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
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
