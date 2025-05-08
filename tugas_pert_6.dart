import 'package:flutter/material.dart';

class TugasPert6 extends StatefulWidget {
  const TugasPert6({super.key});

  @override
  State<TugasPert6> createState() => _TugasPert6State();
}

class _TugasPert6State extends State<TugasPert6> {

  final namaController = TextEditingController();

  @override
  void dispose() {
    namaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas Stateful")),
      body: Column(
        children: [
          Text(
            "Selamat Datang",
            style: TextStyle(
              fontSize: 20
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
            controller: namaController,
          ),

          ),          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => setState(() {
                  var $nama = Text(namaController.text);
                }),
                child: Text("Submit")
              ),
            ],
          ),
        ],
      ),
    );
  }
}