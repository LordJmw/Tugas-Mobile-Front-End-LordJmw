import 'package:flutter/material.dart';

class P073 extends StatefulWidget {
  final String nim;
  final String nama;
  final String email;
  const P073({
    super.key,
    required this.nim,
    required this.nama,
    required this.email,
  });

  @override
  State<P073> createState() => _P073State();
}

class _P073State extends State<P073> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://raw.githubusercontent.com/kurniawansHeru/gambar/refs/heads/main/${widget.nim}.jpg",
            width: 140,
            height: 200,
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.23,
                child: Text("Nim"),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                child: Center(child: Text(":")),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.23,
                child: Text("Nim"),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.23,
                  child: Text("Nama"),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Center(child: Text(":")),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.23,
                  child: Text(widget.nama),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.23,
                child: Text("Email"),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                child: Center(child: Text(":")),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.23,
                child: Text(widget.email),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
