import 'package:flutter/material.dart';

class MahasiswaDetail extends StatelessWidget {
  final String mataKuliah;
  final int sks;
  final String semester;
  const MahasiswaDetail({super.key, required this.mataKuliah, required this.sks, required this.semester});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Mata Kuliah")),
      body: Center(
        child: Column(
          children: [
            Text("Mata Kuliah : "+mataKuliah),
            Text("SKS : ${sks}"),
            Text("Semester : "+semester)
          ],
        ),
      ),
    );
  }
}