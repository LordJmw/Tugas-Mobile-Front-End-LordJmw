import 'package:flutter/material.dart';

class DetailMhs extends StatelessWidget {
  final String nama;
  final String nim;
  const DetailMhs({super.key, required this.nim, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail Mahasiswa"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(nim, style: TextStyle(fontSize: 20)),
                    Text(nama, style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.supervised_user_circle, size: 200),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
