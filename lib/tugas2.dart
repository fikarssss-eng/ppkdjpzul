import 'package:flutter/material.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Profil Lengkap")),),
      body: Column(
        children: [
          Text("Zulfikar PS", style: TextStyle(fontSize: 30),),
          Padding(padding: EdgeInsets.all(16),
          child: Container(
            child: Row(
              children: [
                Icon(Icons.mail),
                Text("fikarssss@gmail.com")],),),),
          Padding(padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Spacer(),
                  Icon(Icons.phone),
                  Text("08111754321")],),
            ),
          Row(children: [
            Expanded(child: Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child: Center(child: Text("Postingan")),)),
            Expanded(child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child: Center(child: Text("Followers")),))  ],
             ),
            SizedBox(height:  50,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(children: [Text("Peserta PPKD Jakarta Pusat Mobile Programming Batch IV 2025. Setelah melewati daftar online, seleksi dokumen, da")],),
                ),
             ),
             Row(
               children: [
                 Expanded(
                  child: Container(
                    color: Colors.purpleAccent, 
                    margin: EdgeInsets.only(top: 450, bottom: 10),
                    child: Center(child: Text("PPKD Jakarta Pusat")),
                    ),
                    ),
               ],
             )
          ],
          ),
    );
  }
}