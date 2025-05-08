import 'package:flutter/material.dart';

class BarisKolom extends StatelessWidget {
  const BarisKolom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baris dan Kolom by Bara"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var i = 1; i <= 3; i++) 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var j = 1; j <= 3; j++) 
                  Padding(
                    padding: EdgeInsets.zero,
                    child: 
                      Text("Baris $i Kolom $j",style: TextStyle(
                        fontSize: 12,
                        color: Colors.deepPurple
                      ),)
                    )
              ],
            )
        ],
      ),
    );
  }
}