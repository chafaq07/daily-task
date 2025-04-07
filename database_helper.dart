import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _databaseName = "user_database.db";
  static final _databaseVersion = 1;
  static final table = 'users';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        email TEXT UNIQUE NOT NULL,
        gender TEXT NOT NULL,
        password TEXT NOT NULL
      )
    ''');
  }

  Future<int> insertUser(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(table, row);
  }

  Future<Map<String, dynamic>?> getUser(String email, String password) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> result = await db.query(table,
        where: 'email = ? AND password = ?', whereArgs: [email, password]);
    return result.isNotEmpty ? result.first : null;
  }
}
