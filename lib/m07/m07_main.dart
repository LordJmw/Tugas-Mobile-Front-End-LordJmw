import 'package:flutter/material.dart';
import 'package:project_m_kuliah/m07/P071.dart';
import 'package:project_m_kuliah/m07/P072.dart';
import 'package:project_m_kuliah/m07/P073.dart';

class M07_holder extends StatefulWidget {
  const M07_holder({super.key});

  @override
  State<M07_holder> createState() => _M07_holderState();
}

class _M07_holderState extends State<M07_holder> {
  List<Widget> views = [
    P071_Page(),
    P072(),
    P073(nim: "231111512", nama: "James", email: "tes@gmail.com"),
  ];
  Widget currView = P071_Page();

  List<Map<String, String>> daftarMhs = [
    {
      "Nim": "231111512",
      "Nama": "James",
      "image_link":
          "https://raw.githubusercontent.com/kurniawansHeru/gambar/refs/heads/main/231111512.jpg",
      "email": "tes@gmail.com",
      "index": "0",
    },
    {
      "Nim": "231113040",
      "Nama": "Alvin",
      "image_link":
          "https://raw.githubusercontent.com/kurniawansHeru/gambar/refs/heads/main/231113040.jpg",
      "email": "tes@gmail.com",
      "index": "1",
    },
    {
      "Nim": "231111968",
      "Nama": "Abdur Robi Alfian",
      "image_link":
          "https://raw.githubusercontent.com/kurniawansHeru/gambar/refs/heads/main/231111968.jpg",
      "email": "tes@gmail.com",
      "index": "2",
    },
    {
      "Nim": "231110299",
      "Nama": "Zein Ath Thoriq Badres",
      "image_link":
          "https://raw.githubusercontent.com/kurniawansHeru/gambar/refs/heads/main/231110299.jpg",
      "email": "tes@gmail.com",
      "index": "3",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("M07 Page"),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (val) {
              print(val);
              setState(() {
                Map<String, String> mahasiswaCurr = {};
                for (var i = 0; i < daftarMhs.length; i++) {
                  if (daftarMhs[i]['index'] == val) {
                    mahasiswaCurr = daftarMhs[i];
                  }
                }
                print(mahasiswaCurr);
                currView = P073(
                  nim: mahasiswaCurr['Nim'].toString(),
                  nama: mahasiswaCurr['Nama'].toString(),
                  email: mahasiswaCurr['email'].toString(),
                );
              });
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                ...daftarMhs.map((mhs) {
                  return PopupMenuItem(
                    value: mhs['index'],
                    onTap: () {},
                    child: Text(mhs['Nim']!),
                  );
                }),
              ];
            },
          ),
        ],
      ),
      body: currView,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            currView = views[idx];
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Anggota Action",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "FAB"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Tentang"),
        ],
      ),
    );
  }
}
