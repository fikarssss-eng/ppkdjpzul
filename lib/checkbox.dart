import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool isChecked = false;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox and Switch Example'),
      ),
     body: Padding(padding: const EdgeInsets.all(16.0),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Syarat Dan ketentuan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),
            const Expanded(
              child: Text('Saya setuju dengan syarat dan ketentuan yang berlaku.'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          isChecked 
          ? 'Anda telah menyetujui syarat dan ketentuan.' 
          : 'Anda belum menyetujui syarat dan ketentuan.',
          style: TextStyle(
            fontSize: 16, 
            color: isChecked 
            ? Colors.green 
            : (isSwitched ? Colors.red : Colors.red),),
        )
      ],
     ),
     )
    );
  }
}