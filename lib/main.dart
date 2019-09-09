import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constrain){
          if (constrain.maxWidth < 1000){
            return Mobyle();
          } 
          return Desctop();
        },
      ),
    );
  }
}

class Mobyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TextField(onChanged: (s){print(s);}, decoration: InputDecoration(labelText: "lable", prefix: Icon(Icons.ac_unit), suffixIcon: Icon(Icons.check_circle_outline), )),),

    );
  }
}
class Desctop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Desctop"),),
    );
  }
}