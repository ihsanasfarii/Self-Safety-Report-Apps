import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""
    CREATE TABLE berita(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      judul TEXT,
      deskripsi TEXT
    )

""");
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase('berita.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTables(database);
    });
  }

  static Future<int> addBerita(String judul, String deskripsi) async {
    final db = await SQLHelper.db();
    final data = {'judul': judul, 'deskripsi': deskripsi};
    return await db.insert('berita', data);
  }

  static Future<List<Map<String, dynamic>>> getBerita() async {
    final db = await SQLHelper.db();
    return db.query('berita');
  }
}
