import 'package:flutter/material.dart';

class Tugas1 extends StatelessWidget {
  const Tugas1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Profile Saya",style: TextStyle(fontSize: 30),),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nama lengkap: Zulfikar Perdana S", style: TextStyle(fontSize: 20)),
          Row(children: [
            Icon(Icons.location_on), Text("Jakarta"),
          
          ],
          ),
          Text("Seorang pelajar yang sedang belajar Flutter")
        ],
      ),
    );
  }
}