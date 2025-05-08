import 'package:flutter/material.dart';
import 'widget/card_widget.dart';
import 'menu/baris_kolom.dart';
import 'menu/contoh_stateless.dart';
import 'menu/contoh_stateful.dart';
import 'menu/mahasiswa_form.dart';
import 'menu/mahasiswa_form2.dart';
import 'menu/tugas_pert_6.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beranda"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        ),
      body: Column(
        children: [
          parsing(Icons.table_view, "Baris dan Kolom", context, BarisKolom()),
          parsing(Icons.play_disabled, "Contoh Stateless", context, ContohStateless()),
          parsing(Icons.play_arrow, "Contoh Stateful", context, ContohStateful()),
          parsing(Icons.account_box, "Form Mahasiswa", context, MahasiswaForm()),
          parsing(Icons.book, "Form Mata Kuliah (Tugas Pertemuan 7)", context, MahasiswaForm2()),
          parsing(Icons.playlist_add, "Tabel Dinamis (Tugas Pertemuan 6)", context, TugasPert6())
        ],
      ),
    );
  }
}

Widget parsing(icon,judul,context,kelas) {
  return GestureDetector(
    child: CardWidget(
      icon: icon,
      judul: judul
    ),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context)=>kelas
        )
      );
    },
  );
}