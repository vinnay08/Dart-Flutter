import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  static Database? _database;

  DBHelper._internal();

  factory DBHelper() => _instance;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('students.db');
    return _database!;
  }

  Future<Database> _initDB(String dbName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, dbName);

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE students (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            firstName TEXT,
            lastName TEXT,
            email TEXT,
            course TEXT,
            address TEXT,
            pincode TEXT,
            city TEXT,
            totalFees TEXT,
            contactNumber TEXT,
            marks TEXT
          )
        ''');
      },
    );
  }

  Future<int> insertStudent(Map<String, dynamic> student) async {
    final db = await database;
    return db.insert('students', student);
  }

  Future<List<Map<String, dynamic>>> getAllStudents() async {
    final db = await database;
    return db.query('students');
  }

  Future<int> deleteStudent(int id) async {
    final db = await database;
    return db.delete('students', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> updateMarks(int id, String marks) async {
    final db = await database;
    return db.update(
      'students',
      {'marks': marks},
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
