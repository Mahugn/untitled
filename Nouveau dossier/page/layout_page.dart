import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mr Bg'),
      ),
          body: Container(
            //color: Colors.black87,
            decoration: BoxDecoration (
              //color: Color.black7,
              border: Border.all(
                color: Colors.red,
                width: 1.0,m
              ), //Border.all
              borderRadius: BorderRadius.circular (10.0),
            ),
            width: 200.0,
            height: 200.0,
            child: Text('Bonjour tout le monde'),
              style: TextStyle (
              color:Colors.white,
            ))
          )
    );
  }
}
