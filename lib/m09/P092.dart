import 'package:flutter/material.dart';

class P092 extends StatefulWidget {
  const P092({super.key});

  @override
  State<P092> createState() => _P092State();
}

class _P092State extends State<P092> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  const Color.fromARGB(255, 225, 225, 225),
                ),
              ),
              onPressed: () {},
              child: Text("231111512"),
            ),
            SizedBox(height: 10),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  const Color.fromARGB(255, 225, 225, 225),
                ),
              ),
              onPressed: () {},
              child: Text("231111512"),
            ),
          ],
        ),
      ),
    );
  }
}
