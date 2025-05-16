import 'package:flutter/material.dart';

class P091 extends StatefulWidget {
  const P091({super.key});

  @override
  State<P091> createState() => _P091State();
}

class _P091State extends State<P091> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Implementasi Drawer"),
        backgroundColor: const Color.fromARGB(255, 148, 212, 242),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("James"),
              accountEmail: Text("231111512"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/kurniawansHeru/gambar/refs/heads/main/231111512.jpg',
                ),
              ),
              decoration: BoxDecoration(color: Colors.purple),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                DefaultTabController.of(context).animateTo(1);
              },
              leading: Icon(Icons.abc),
              title: Text("Nama"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.numbers),
              title: Text("NIM"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.house_outlined),
              title: Text("Kelas"),
            ),
          ],
        ),
      ),
      body: Center(child: Text("Kosong")),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
