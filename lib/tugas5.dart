import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  bool nama = true;
  bool gambar = false;
  bool tampil = true;
  num angka = 0;
  bool sentuh = true;
  bool kotak = false;
  double counter1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons"), backgroundColor: Colors.blue,),
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(nama ? "Nama saya: Zulfikar":""),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                onPressed: () {
                  nama = !nama;
                  setState(() {
                  });
                  print("Tekan sekali");
                },
                onLongPress: () {
                  nama = !nama;
                  setState(() {  
                  });
                  print("Tekan lama");
                },
                child: Text("Tekan", style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              print("Tampilkan gambar : $gambar");
              gambar = !gambar;
              setState(() {});
            },
            icon: Icon(
              Icons.favorite,
              color: gambar ? Colors.red : Colors.blue,
            ),
          ),
          Text(gambar ? "Disukai":""),
TextButton(
            onPressed: () {
              print("Tampilkan gambar : $tampil");
              tampil = !tampil;
              setState(() {});
            },
            child: Text(tampil ? "Sembunyikan" : "Tampilkan"),
          ), 
          Text(tampil? "Deskripsikan":""),
 
            Text("$angka"),
            FloatingActionButton(
              onPressed: () {
             angka--;
              setState(() {});
            },child: Icon(Icons.remove),),
            SizedBox(height: 20),
            InkWell(
              splashColor: Colors.green,
              onTap: () {
                debugPrint('kotak disentuh'); 
                setState(() {
                  kotak=!kotak;
                });
              },
              child:
              Text(kotak ? "Tekan" : "Splash Hijau")),
              GestureDetector(
                onLongPress: () {
                  print("Tekan lama");
                  setState(() {
                    counter1 += 5;
                  });
                },
                onTap: () {
                  print("Tekan sekali");
                  setState(() {
                    counter1++;
                  });
                },
                onDoubleTap: () {
                  print("Tekan 2x");
                  setState(() {
                    counter1 += 2;
                  });
                },
                child: Container(child: Text("tekan"),),
              )
        ],
      ),
    );
  }
}