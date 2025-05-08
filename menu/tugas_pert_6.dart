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

  int baris = 1;
  int kolom = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabel Dinamis")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              textile("Jumlah Baris : $baris"),
              Row(
                children: [
                  ElevatedButton(
                onPressed: () => setState(() {
                  baris++;
                }),
                child: Text("+"),
              ),
              ElevatedButton(
                onPressed: () => setState(() {
                  if (baris > 1) {
                    baris--;
                  }
                }),
                child: Text("-")
              ),
                ],
              ),              
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              textile("Jumlah Kolom : $kolom"),
              Row(
                children: [
                  ElevatedButton(
                onPressed: () => setState(() {
                  kolom++;
                }),
                child: Text("+"),
              ),
              ElevatedButton(
                onPressed: () => setState(() {
                  if (kolom > 1) {
                    kolom--;
                  }
                }),
                child: Text("-")
              ),
                ],
              ),              
            ],
          ),
          // for (var i = 1; i <= baris; i++)
          //   Padding(padding: EdgeInsets.all(5),
          //   child: CardWidget(icon: Icons.list, judul: "Baris ke-$i"))
          for (var i = 1; i <= baris; i++) 
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var j = 1; j <= kolom; j++) 
                  Icon(Icons.square_outlined),
              ],
            )
              ],
            )
        ],
      ),
    );
  }
}

Widget textile(data) {
  return Text(
    data,
    style: TextStyle(
      fontSize: 20
    ),
  );
}