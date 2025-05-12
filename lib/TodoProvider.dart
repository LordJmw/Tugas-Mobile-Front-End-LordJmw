import "package:flutter/material.dart";
import "Todo.dart";

class TodoProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _todoList = [
    {
      "judul": "Create Video Tutorial",
      "keterangan": "Tutorial video untuk pembelajaran daring m02",
      "waktu_mulai": "19-03-2022 s/d",
      "waktu_selesai": "20-30-2022 s/d",
    },
  ];

  //supaya bisa diakses
  List<Map<String, dynamic>> get todoList => _todoList;

  void addTodo(Todo todo) {
    _todoList.add({
      "judul": todo.judul,
      "keterangan": todo.keterangan,
      "waktu_mulai": todo.waktu_mulai,
      "waktu_selesai": todo.waktu_selesai,
    });
    notifyListeners();
  }

  void deleteTodo(int index) {
    _todoList.removeAt(index);
    notifyListeners();
  }
}
