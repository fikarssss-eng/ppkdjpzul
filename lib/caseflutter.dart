import 'package:flutter/material.dart';

class Caseflutter extends StatelessWidget {
  const Caseflutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil Lengkap"),),
      body: Column(
        children: [
          Text("Zulfikar PS", style: TextStyle(fontSize: 30),),
          Padding(padding: EdgeInsets.all(8),
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
              child: Text("Postingan"),)),
            Expanded(child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child: Text("Followers"),))  ],
             ),
             SizedBox(height:  1,),
             Container(
              child: Padding(
                padding: EdgeInsets.all(10)),
                
              
             )
          ],
          ),
    );
  }
}