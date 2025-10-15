import 'package:flutter/material.dart';

class Tugas3Flutter extends StatelessWidget {
  const Tugas3Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(child: Text("Data Diri")),),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Nama"),
           TextField(
            decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Masukkan Nama Anda",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic)
                ),
            ),
            Padding(padding: EdgeInsets.all(4)),
          Text("Email"),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  hintText: "Masukkan Email Anda",
                ), 
            ),
            Padding(padding: EdgeInsets.all(4)),
          Text("Nomer HP"),
            TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontStyle: FontStyle.italic),
                border: OutlineInputBorder(),
                hintText:  "Masukan Nomer HP Anda",
              ),
            ),
            Padding(padding: EdgeInsets.all(4)),
           Text("Deskripsi"),
            TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontStyle: FontStyle.italic),
                border: OutlineInputBorder(),
                hintText:  "Masukan Profil Anda",
              ),
            ),
            Padding(padding: EdgeInsets.all(4)), 
         GridView.builder(
          physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [Text("Contoh ${index+1}")],),
                  // child: Image.asset(
                  //   "assets/images/soekarno.jpg",
                  //   fit: BoxFit.cover,
                  // ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}