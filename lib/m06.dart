import 'package:flutter/material.dart';
import 'package:project_m_kuliah/TodoProvider.dart';
import 'package:project_m_kuliah/m03.dart';
import 'package:provider/provider.dart';

class M06_Page extends StatefulWidget {
  const M06_Page({super.key});

  @override
  State<M06_Page> createState() => _M06_PageState();
}

class _M06_PageState extends State<M06_Page> {
  bool clicked = false;
  TextEditingController controllerSelectedCategory = TextEditingController(
    text: "Create Video Tutorial",
  );
  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<TodoProvider>(context);
    final myProviderList = myProvider.todoList;

    return Scaffold(
      appBar: AppBar(
        title: Text("Praktek M06"),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: SwitchListTile(
              value: clicked,
              onChanged: (val) {
                setState(() {
                  clicked = val;
                });
              },
              title: Text("Aktifkan DropDown"),
              activeColor: Colors.white,
              activeTrackColor: Colors.purple,
            ),
          ),
          DropdownMenu(
            enabled: clicked ? true : false,
            controller: controllerSelectedCategory,
            dropdownMenuEntries:
                myProviderList.map((activity) {
                  return DropdownMenuEntry(
                    value: activity['judul'],
                    label: activity['judul'],
                  );
                }).toList(),
            onSelected: (value) {
              setState(() {
                controllerSelectedCategory = TextEditingController(text: value);
              });

              // print(controllerSelectedCategory.text);
            },
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Container(
                width: double.infinity,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (var c in myProviderList)
                      if (c['judul'] == controllerSelectedCategory.text)
                        for (var entry in c.entries)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 150, child: Text("${entry.key}")),
                              SizedBox(width: 40, child: Text(":")),
                              SizedBox(
                                width: 150,
                                child: Text("${entry.value}"),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => M03_Page()),
          );
        },
        icon: Icon(Icons.arrow_back),
      ),
    );
  }
}
