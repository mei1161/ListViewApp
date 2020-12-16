

import 'package:flutter/material.dart';
import 'package:flutter_app_kadai002/nextPage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> list = ['Hello','Hoge','Fuga','HogeHoge','FugaFuga'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.builder(
    itemCount: list.length,
    itemBuilder: (context, index){
      return Container(
        decoration: new BoxDecoration(
          border: new Border(
            bottom: new BorderSide(width: 1.0, color: Colors.grey)
          )
        ),
      child: ListTile(
        title: Text(list[index], style: TextStyle(color: Colors.black, fontSize: 18.0)),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NextPage(
                titleText: list[index],
              )
            )
          );
        }
      )
      );
    }
    )
  );
  }
}