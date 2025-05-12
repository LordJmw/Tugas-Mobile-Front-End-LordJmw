import 'package:flutter/material.dart';
import 'package:project_m_kuliah/m02_detail.dart';
import 'package:project_m_kuliah/m03.dart';

class Mahasiswa {
  String nama;
  String nim;
  Mahasiswa({this.nama = '', this.nim = ''});
}

class M02Page extends StatefulWidget {
  const M02Page({super.key});

  @override
  State<M02Page> createState() => _M02PageState();
}

class _M02PageState extends State<M02Page> {
  List<Mahasiswa> dataMahasiswa = [];
  Future getMahasiswa() {
    List<Mahasiswa> data = [
      Mahasiswa(nama: '', nim: ''),
      Mahasiswa(nama: '', nim: ''),
      Mahasiswa(nama: '', nim: ''),
      Mahasiswa(nama: '', nim: ''),
      Mahasiswa(nama: '', nim: ''),
      Mahasiswa(nama: '', nim: ''),
      Mahasiswa(nama: '', nim: ''),
      Mahasiswa(nama: '', nim: ''),
      Mahasiswa(nama: '', nim: ''),
    ];

    List<String> nama = [
      "Andi",
      "Budi",
      'Caca',
      'Cici',
      'Dini',
      "Putra",
      "Putri",
      "Satria",
      'Sari',
    ];

    for (var i = 0; i < nama.length; i++) {
      data[i].nama = nama[i];
      data[i].nim = "231111999" + (i + 1).toString();
    }
    dataMahasiswa = data;
    return Future.value(dataMahasiswa);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMahasiswa().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Halaman M02")),
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => M03_Page()),
              );
            },
            icon: Icon(Icons.arrow_circle_right_rounded),
          ),
          //kolom membiarkan childnya mengambil height sesuka hati
          //gridview itu scrollable jadi akan mengambil infinity height, yang nantinya akan error
          //expanded memaksa gridview untuk mengambil tempat yang tersedia biar gak error
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 6,
              ),
              itemCount: dataMahasiswa.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 169, 212, 248),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => DetailMhs(
                                nim: dataMahasiswa[index].nim,
                                nama: dataMahasiswa[index].nama,
                              ),
                        ),
                      );
                    },
                    child: Text(
                      '${dataMahasiswa[index].nama} ${dataMahasiswa[index].nim}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
