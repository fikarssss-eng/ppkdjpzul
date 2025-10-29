import 'package:flutter/material.dart';

class Inputwidget extends StatefulWidget {
  const Inputwidget({super.key});

  @override
  State<Inputwidget> createState() => _InputwidgetState();
}

class _InputwidgetState extends State<Inputwidget> {
  bool isChecked = false;
  bool isOn = false;
  String? selected;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Page"),),
      drawer: Drawer(
        backgroundColor:isOn?Colors.grey: Colors.white,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              color: Colors.green,
              child: Text("Data Lengkap", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text("Checkbox")
            ),
            ListTile(
              leading: Icon(Icons.switch_account),
              title: Text("Switch")
            ),
            ListTile(
              leading: Icon(Icons.arrow_drop_down),
              title: Text("Dropdown")
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Tanggal")
            ),
            ListTile(
              leading: Icon(Icons.lock_clock),
              title: Text("Jam"),
                 ),
                ],
        )
      ),
      body: Column(
      children: [
        Center(child: Text("Saya menyetujui persyaratan yang berlaku")),
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            print(value);
            setState(() {
              isChecked = value!;
            });
          }
          ),
          SizedBox(height: 8),
        Text(
          isChecked
              ? "Lanjutkan pendaftaran dilanjutkan"
              : "Anda belum bisa melanjutkan",
          ),
          SizedBox(height: 4),
          Text("Aktifkan Mode Gelap"),
          Switch(
            value: isOn, 
            onChanged: (val){
            setState(() {
              isOn = val;
            });
          },
          ),
          Text(isOn ? "Mode Gelap Aktif" : "Mode Terang Aktif"),
          SizedBox(height: 8),
          Text("Pilih Kategori Produk"),
          DropdownButton<String>(
            value: selected,
            hint: Text("Anda memilih"),
            items: ["Elektronik", "Pakaian", "Makanan"].map((String val) {
            return DropdownMenuItem(value: val, child: Text(val));
          }).toList(),
          onChanged: (val){
            setState(() {
              selected = val;
            });
           },
          ),
          SizedBox(height: 8),
          Text("Pilih tanggal lahir"),
          ElevatedButton(
          onPressed: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              print(picked);
              setState(() {
                selectedDate = picked;
              });
            }
          },
          child: Text("Pilih Tanggal Lahir"),
        ),
          SizedBox(height: 8),
        Text("Atur Pengingat"),
        ElevatedButton(onPressed: () async {
          final TimeOfDay? picked = await showTimePicker(
            context: context,
           initialTime: TimeOfDay.now()
           );
           if (picked !=null) {
            print(picked);
            setState(() {
              selectedTime = picked;
            });
           }
        }, 
        child: Text("Pilih Waktu Pengingat"),
        ),
      // drawer: Drawer(
      //   backgroundColor:isOn?Colors.grey: Colors.white,
      //   child: Column(
      //     children: [
      //       Container(
      //         alignment: Alignment.center,
      //         height: 50,
      //         width: double.infinity,
      //         color: Colors.green,
      //         child: Text("Data Lengkap", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.check_box),
      //         title: Text("Checkbox")
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.switch_account),
      //         title: Text("Switch")
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.arrow_drop_down),
      //         title: Text("Dropdown")
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.calendar_month),
      //         title: Text("Tanggal")
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.lock_clock),
      //         title: Text("Jam"),
      //            ),
      //           ],
        
      //   )
      
      // ),
      ]
      )
    );
          
  }
}