import 'package:flutter/material.dart';

class P072 extends StatefulWidget {
  const P072({super.key});

  @override
  State<P072> createState() => _P072State();
}

class _P072State extends State<P072> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Text("+"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Text("+"),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Text("+"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Row(children: [FloatingActionButton(onPressed: () {}, child: Text("+"))],)
        ],
      ),
    );
  }
}
