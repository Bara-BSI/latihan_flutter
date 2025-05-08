import 'package:flutter/material.dart';
import 'mahasiswa_detail.dart';

class MahasiswaForm extends StatefulWidget {
  const MahasiswaForm({super.key});

  @override
  State<MahasiswaForm> createState() => _MahasiswaFormState();
}


class _MahasiswaFormState extends State<MahasiswaForm> {
  final _formKey = GlobalKey<FormState>();
  final _nimCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _alamatCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Mahasiswa")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: nimField(),
            ),            
            Padding(
              padding: EdgeInsets.all(16),
              child: namaField(),
            ),            
            Padding(
              padding: EdgeInsets.all(16),
              child: alamatField(),
            ),            
            tombolSimpan()
          ]
        ),
      ),
    );
  }

  Widget nimField() {
    return TextField(
      decoration: InputDecoration(labelText: "NIM"),
      controller: _nimCtrl,
    );
  }

  Widget namaField() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama"),
      controller: _namaCtrl,
    );
  }

  Widget alamatField() {
    return TextField(
      decoration: InputDecoration(labelText: "Alamat"),
      controller: _alamatCtrl,
    );
  }

  Widget tombolSimpan() {
    return ElevatedButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contex)=>MahasiswaDetail(nim: _nimCtrl.text, nama: _namaCtrl.text, alamat: _alamatCtrl.text)
          )
        );
      },
      child: Text("Simpan")
    );
  }
}