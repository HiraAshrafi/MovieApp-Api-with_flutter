import 'package:flutter/material.dart';
import 'package:movieapp/view/home.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),

      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green
      ),


    );
  }
}
