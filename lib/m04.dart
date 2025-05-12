import 'package:flutter/material.dart';
import 'package:project_m_kuliah/TodoProvider.dart';
import 'package:provider/provider.dart';

class M04_Page extends StatefulWidget {
  const M04_Page({super.key});

  @override
  State<M04_Page> createState() => _M04_PageState();
}

class _M04_PageState extends State<M04_Page> {
  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<TodoProvider>(context);
    final myProviderList = myProvider.todoList;
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(30),
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: myProviderList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: InkWell(
                          onLongPress: () {
                            myProvider.deleteTodo(index);
                          },
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: CircleAvatar(
                                    child: Text(
                                      (index + 1).toString(),
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    backgroundColor: Colors.purple,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(myProviderList[index]['judul']),
                                      Text(
                                        myProviderList[index]['keterangan'],
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Chip(
                                        label: Text(
                                          "Work",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.white,
                                          ),
                                        ),
                                        backgroundColor: Colors.lightBlue,
                                      ),
                                      Text(
                                        myProviderList[index]['waktu_mulai'],
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Text(
                                        myProviderList[index]['waktu_selesai'],
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
