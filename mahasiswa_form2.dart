import 'package:flutter/material.dart';
import './mahasiswa_detail2.dart';

class MahasiswaForm2 extends StatefulWidget {
  const MahasiswaForm2({super.key});

  @override
  State<MahasiswaForm2> createState() => _MahasiswaForm2State();
}


class _MahasiswaForm2State extends State<MahasiswaForm2> {
  final _formKey = GlobalKey<FormState>();
  final _mataKuliahCtrl = TextEditingController();
  final _sksCtrl = TextEditingController();
  final _semesterCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Mata Kuliah")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: mataKuliahField(),
            ),            
            Padding(
              padding: EdgeInsets.all(16),
              child: sksField(),
            ),            
            Padding(
              padding: EdgeInsets.all(16),
              child: semesterField(),
            ),            
            tombolSimpan()
          ]
        ),
      ),
    );
  }

  Widget mataKuliahField() {
    return TextField(
      decoration: InputDecoration(labelText: "Mata Kuliah"),
      controller: _mataKuliahCtrl,
    );
  }

  Widget sksField() {
    return TextField(
      decoration: InputDecoration(labelText: "SKS"),
      keyboardType: TextInputType.number,
      controller: _sksCtrl,
    );
  }

  Widget semesterField() {
    return TextField(
      decoration: InputDecoration(labelText: "Semester"),
      controller: _semesterCtrl,
    );
  }

  Widget tombolSimpan() {
    return ElevatedButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contex)=>MahasiswaDetail(mataKuliah: _mataKuliahCtrl.text, sks: int.parse(_sksCtrl.text), semester: _semesterCtrl.text)
          )
        );
      },
      child: Text("Simpan")
    );
  }
}