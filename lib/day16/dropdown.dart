import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  const DropdownPage({super.key});

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
String? selectedKategori;
final List<String> kategoriList = [
  'Elektronik',
  'Pakaian',
  'Makanan',
  'Lainnya',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pilih Kategori produk"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ const Text("Pilih Kategori Produk", style: TextStyle(
                          fontSize: 20,),
                          ),
                      DropdownButton<String>(
                        hint: const Text('Pilih Kategori'),
                        value: selectedKategori,
                        items: kategoriList.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            selectedKategori = newValue;
                          });
                        },
                      ),
                      const SizedBox(height: 20),
                      Text(
                        selectedKategori != null 
                        ? 'Kategori yang dipilih: $selectedKategori' 
                        : 'Belum ada kategori yang dipilih.',
                        style: TextStyle(
                          fontSize: 16, 
                          color: selectedKategori != null 
                          ? Colors.green 
                          : Colors.red,
          
                      ),
                      ),
          ],
        ),
      ),
    );
  }
}