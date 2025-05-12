import 'package:flutter/material.dart';
import 'package:project_m_kuliah/Todo.dart';
import 'package:project_m_kuliah/TodoProvider.dart';
import 'package:project_m_kuliah/m02.dart';
import 'package:project_m_kuliah/m03.dart';
import 'package:project_m_kuliah/m04.dart';
import 'package:project_m_kuliah/m06.dart';
import 'package:project_m_kuliah/m07/P072.dart';
import 'package:project_m_kuliah/m07/m07_main.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => TodoProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: M03_Page(),
      home: M07_holder(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _decrementByFive() {
    setState(() {
      _counter = _counter - 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYCG7SYpSJ4k6UNlm5k46RagaqSN4hmg205Q&s',
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const M02Page()),
                );
              },
              icon: Icon(Icons.arrow_circle_right),
            ),
            Text.rich(
              TextSpan(
                text: "Aplikasi ",
                children: [
                  TextSpan(
                    text: "Belajar ",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                    text: "Berhitung",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Text('Total:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    _incrementCounter();
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: () {
                    _decrementCounter();
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      _decrementByFive();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.remove), Text("5")],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [

      //
      //   ],
      // ),
    );
  }
}
