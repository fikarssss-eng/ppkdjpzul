import 'package:flutter/material.dart';

class Tugas6 extends StatefulWidget {
  const Tugas6({super.key});

  @override
  State<Tugas6> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Tugas6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
          Text("Welcome Back",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          SizedBox(height: 16,),
          Text("Welcome back to Estero. Have a good time"),
          SizedBox (height: 32,),
          Container()
          ],),
          
          
      )
        

    );
  }
}