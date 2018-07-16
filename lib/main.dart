
import 'package:flutter/material.dart';
import 'listAppDemo.dart';
import 'titleSection.dart';
import 'buttonSection.dart';
import 'textSection.dart';

void main() {
  runApp(MyApp());
}

// widget的主要工作是提供一个build()方法来描述如何根据其他较低级别的widget来显示自己
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material是一种标准的移动端和web端的视觉设计语言
    return MaterialApp(
      title: '万方数据',
      home: getListVC(),
//      home: getLayoutVC(context),
    );
  }
  // 列表
  Scaffold getListVC() {
    return Scaffold(
      body: Center(
        child: new RandomWords(),
      ),
    );
  }
  // 简单布局
  Scaffold getLayoutVC(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/lake.jpg',
            width: 600.0,
            height: 200.0,
            fit: BoxFit.cover,
            color: Colors.red,
          ),
          getTitleSection(),
          getButtonSection(context),
          getTextSection(),
        ],
      ),
    );
  }
}
