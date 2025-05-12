class Todo {
  final String judul;
  final String keterangan;
  final String waktu_mulai;
  final String waktu_selesai;
  // static artinya list todos ini punya class Todo, buka instance apapun
  // final artinya todos ini dia tetap list, gabisa di reassign, yang bisa diubah cuma isi listnya, kek reactive di vue

  const Todo({
    required this.judul,
    required this.keterangan,
    required this.waktu_mulai,
    required this.waktu_selesai,
  });
}
