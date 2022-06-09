import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sql;

class UserDatabase {
  static Future<void> createTable(sql.Database database) async {
    await database.execute("""
    CREATE TABLE user (
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      nama TEXT,
      nim TEXT
    )
      """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase('user.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTable(database);
    });
  }

  static Future<int> tambahData(String nama, String nim) async {
    final db = await UserDatabase.db();
    final data = {'nama': nama, 'nim': nim};
    return await db.insert('user', data);
  }

  static Future<List<Map<String, dynamic>>> getDataUser() async {
    final db = await UserDatabase.db();
    return db.query('user');
  }

  static Future<int> updateUsers(int id, String nama, String nim) async {
    final database = await UserDatabase.db();
    final data = {
      'nama': nama,
      'nim': nim,
    };

    final result =
        await database.update('user', data, where: "id = ?", whereArgs: [id]);

    return result;
  }

  static Future<void> deleteUsers(int id) async {
    final database = await UserDatabase.db();

    await database.delete('user', where: "id = ?", whereArgs: [id]);
  }
}
