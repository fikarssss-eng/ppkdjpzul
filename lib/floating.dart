import 'package:flutter/material.dart';

class FloatingActionButtonDay12 extends StatelessWidget {
  const FloatingActionButtonDay12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FloatingActionButton Button")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onLongPress: () {
                print("Tekan lama");
              },
              onDoubleTap: () {
                print("Tekan dua kali");
              },
              onTap: () {
                print("Tekan sekali");
              },
              child: Text("Tekan disini"),
            ),
          ),
        ],
      ),
    );
  }
}