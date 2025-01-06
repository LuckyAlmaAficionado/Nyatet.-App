import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  late Box _box;

  // Inisialisasi Hive dan buka box
  Future<void> initializeHive() async {
    // Pastikan Hive sudah diinisialisasi
    await Hive.initFlutter();
    _box = await Hive.openBox('nyatet.app');
  }

  // Mengambil data dari box
  dynamic get(String key) {
    return _box.get(key);
  }

  // Menyimpan data ke box
  Future<void> set(String key, dynamic value) async {
    await _box.put(key, value);
  }

  // Mengambil semua data dari box
  List<dynamic> getAll() {
    return _box.values.toList();
  }

  // Menghapus data dari box
  Future<void> delete(String key) async {
    await _box.delete(key);
  }
}
