import 'package:flutter/material.dart';
import "package:intl/intl.dart";
import "package:flutter/material.dart";
import "package:project_m_kuliah/Todo.dart";
import "package:project_m_kuliah/TodoProvider.dart";
import "package:project_m_kuliah/m04.dart";
import "package:project_m_kuliah/m06.dart";
import "package:provider/provider.dart";

class M03_Page extends StatefulWidget {
  const M03_Page({super.key});

  @override
  State<M03_Page> createState() => _M03_PageState();
}

class _M03_PageState extends State<M03_Page> {
  String judulBaris = "M03 TextField";
  bool _show = false;
  Icon _active = Icon(Icons.visibility);
  String pilihan = "Routine";

  //text editing controller agar bisa mendapat value dari input user
  TextEditingController judulCtr = TextEditingController(text: "");
  TextEditingController keteranganCtr = TextEditingController(text: "");
  TextEditingController waktuMulaiCtr = TextEditingController(text: "");
  TextEditingController waktuSelesaiCtr = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<TodoProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text(judulBaris), backgroundColor: Colors.purple),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 10, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Kegiatan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      icon: Icon(Icons.web),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Judul Kegiatan",
                        ),
                        onChanged:
                            (text) => {
                              setState(() {
                                judulBaris = text;
                              }),
                            },
                        controller: judulCtr,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton.icon(
                          onPressed: null,
                          label: Text(
                            "Keterangan",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          icon: Icon(Icons.menu, color: Colors.black),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: SizedBox(
                        width: double.infinity,
                        height: 130,
                        child: TextField(
                          textAlign: TextAlign.center, //secara horizontal
                          textAlignVertical:
                              TextAlignVertical.center, //secara vertikal
                          //artinya kita set secara default
                          //textfield ini height nya setara 5 baris tulisan,
                          //maks hanya 7 baris tulisan, kalau lebih, baris tidak akan bertambah tapi kita bisa scroll
                          // minLines: 5,
                          // maxLines: 7,

                          //karena kita pake expands true maka min dan max line harus null
                          minLines: null,
                          maxLines: null,

                          decoration: InputDecoration(
                            hintText: "Tambah Keterangan",
                            border: OutlineInputBorder(),
                            alignLabelWithHint:
                                true, //center secara vertikal untuk tinggi yang beberapa baris
                          ),
                          expands: true,
                          controller: keteranganCtr,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 100,
                            child: Column(
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  label: Text(
                                    "Tanggal Mulai",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  icon: Icon(Icons.calendar_month),
                                ),
                                TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: DateFormat(
                                      'yyyy-MM-dd',
                                    ).format(DateTime.now()),
                                    hintStyle: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        199,
                                        196,
                                        196,
                                      ),
                                    ),
                                  ),
                                  keyboardType: TextInputType.datetime,
                                  controller: waktuMulaiCtr,
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.11,
                            height: 100,
                          ),

                          Expanded(
                            child: SizedBox(
                              height: 100,
                              child: Column(
                                children: [
                                  TextButton.icon(
                                    onPressed: () {},
                                    label: Text(
                                      "Tanggal Selesai",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    icon: Icon(Icons.calendar_month),
                                  ),

                                  TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      hintText: DateFormat(
                                        'yyyy-MM-dd',
                                      ).format(DateTime.now()),
                                      hintStyle: TextStyle(
                                        color: const Color.fromARGB(
                                          255,
                                          199,
                                          196,
                                          196,
                                        ),
                                      ),
                                    ),
                                    keyboardType: TextInputType.datetime,
                                    controller: waktuSelesaiCtr,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: null,
                      label: Text(
                        "Kategori",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: Icon(Icons.dashboard_customize),
                    ),
                    DropdownButton<String>(
                      padding: EdgeInsets.all(10),
                      items: [
                        DropdownMenuItem(
                          child: Text("Routine"),
                          value: "Routine",
                        ),
                        DropdownMenuItem(child: Text("Habit"), value: "Habit"),
                      ],
                      value: pilihan,
                      onChanged: (String? value) {
                        setState(() {
                          pilihan = value ?? "";
                        });
                      },
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Batal",
                        style: TextStyle(color: Colors.purple),
                      ),
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        side: WidgetStateProperty.all(
                          BorderSide(
                            color: const Color.fromARGB(255, 216, 216, 216),
                          ),
                        ),
                        fixedSize: WidgetStateProperty.all(Size.fromWidth(120)),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    ElevatedButton(
                      onPressed: () {
                        if (judulCtr.text.isEmpty ||
                            keteranganCtr.text.isEmpty ||
                            waktuMulaiCtr.text.isEmpty ||
                            waktuSelesaiCtr.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: (Text("Please Fill All Fields"))),
                          );
                          return;
                        }
                        Todo toDo = Todo(
                          judul: judulCtr.text,
                          keterangan: keteranganCtr.text,
                          waktu_mulai: waktuMulaiCtr.text,
                          waktu_selesai: waktuSelesaiCtr.text,
                        );

                        myProvider.addTodo(toDo);

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => M06_Page()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.resolveWith<Color?>((
                              Set<WidgetState> states,
                            ) {
                              if (states.contains(WidgetState.pressed)) {
                                return Colors.deepPurple;
                              }
                              return Colors.purple;
                            }),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        fixedSize: WidgetStateProperty.all(Size.fromWidth(120)),
                      ),
                      child: Text(
                        "Simpan",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// body: Center(
//         child: Column(
//           children: [
//             OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
//             ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
//             //disabled pas onPressed bikin null
//             TextButton(
//               onPressed: null,
//               style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
//               child: const Text("Disabled Button"),
//             ),
//             TextButton(
//               onPressed: () {},
//               style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
//               child: Text("Enabled Button"),
//               autofocus: false,
//             ),
//             //dengan icon
//             TextButton.icon(
//               onPressed: () {},
//               onLongPress: () {
//                 print("button long press ditekan");
//               },
//               label: Text("Button dengan icon"),
//               icon: Icon(Icons.web),
//             ),
//             ToggleButtons(
//               isSelected: [false, false, false],
//               children: [
//                 Icon(Icons.wifi),
//                 Icon(Icons.network_cell_outlined),
//                 Icon(Icons.bluetooth),
//               ],
//               onPressed: (selected) {
//                 print(selected);
//               },
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Enter items you want to search",
//               ),
//             ),
//           ],
//         ),
//       ),