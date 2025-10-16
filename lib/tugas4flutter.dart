import 'package:flutter/material.dart';

class Tugas4Flutter extends StatelessWidget {
  const Tugas4Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(child: Text("Data Diri"))),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
                padding: const EdgeInsets.all(8.0),
        children: [
        Text("Nama"),
         TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Masukkan Nama Anda",
            hintStyle: TextStyle(fontStyle: FontStyle.italic)
              ),
          ),
          SizedBox(height: 8),        
          Text("Email"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintStyle: TextStyle(fontStyle: FontStyle.italic),
              hintText: "Masukkan Email Anda",
              ), 
          ),
          SizedBox(height: 8),        
          Text("Nomer HP"),
          TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(fontStyle: FontStyle.italic),
              border: OutlineInputBorder(),
              hintText:  "Masukan Nomer HP Anda",
             ),
          ),
          SizedBox(height: 8),        
         Text("Deskripsi"),
          TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(fontStyle: FontStyle.italic),
              border: OutlineInputBorder(),
              hintText:  "Masukan Profil Anda",
             ),
          ),
          SizedBox(height: 16,),
          ListTile(
            tileColor: Colors.cyan,
                     // leading: Image.asset("assets/images/soekarno.jpg"),
                     title: Text(
                       "Iphone",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     subtitle: Text(
                       "Rp 25.000.000",
                       style: TextStyle(fontSize: 13),
                     ),
                     trailing: Icon(Icons.more_horiz),
                   ),
          SizedBox(height: 8,),
          ListTile(
            tileColor: Colors.cyan,
                     // leading: Image.asset("assets/images/soekarno.jpg"),
                     title: Text(
                       "Samsung",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     subtitle: Text(
                       "Rp 20.000.000",
                       style: TextStyle(fontSize: 13),
                     ),
                     trailing: Icon(Icons.more_horiz),
                   ),SizedBox(height: 8,),
          ListTile(
            tileColor: Colors.cyan,
                     // leading: Image.asset("assets/images/soekarno.jpg"),
                     title: Text(
                       "Huawei",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     subtitle: Text(
                       "Rp 15.000.000",
                       style: TextStyle(fontSize: 13),
                     ),
                     trailing: Icon(Icons.more_horiz),
                   ),
          SizedBox(height: 8,),
          ListTile(
            tileColor: Colors.cyan,
                     // leading: Image.asset("assets/images/soekarno.jpg"),
                     title: Text(
                       "Nokia",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     subtitle: Text(
                       "Rp 10.000.000",
                       style: TextStyle(fontSize:13),
                     ),
                     trailing: Icon(Icons.more_horiz),
                   ),
          SizedBox(height: 8,),
          ListTile(
            tileColor: Colors.cyan,
                     // leading: Image.asset("assets/images/soekarno.jpg"),
                     title: Text(
                       "Xiaomi",
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     subtitle: Text(
                       "Rp. 12.000.000",
                       style: TextStyle(fontSize: 13),
                     ),
                     trailing: Icon(Icons.more_horiz),
                   ),
          SizedBox(height: 16,),
        ],
            ),
    );
  }
}