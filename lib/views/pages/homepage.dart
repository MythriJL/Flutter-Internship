import 'package:flutter/material.dart';
import './todomain.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DELAT"),
      ),
      body: TodoListScreen(),
      
    );
  }
}
