import 'package:flutter/material.dart';

class Tugas1 extends StatelessWidget {
  const Tugas1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
  "Profile Saya",
  style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.green[900],
    // shadows: [
    //   Shadow(blurRadius: offset: Offset(2, 2),
    //   blurRadius: 4.0,
    //   color: Colors.black26,)
    // ] // Menambahkan warna hijau
  ),
),),
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