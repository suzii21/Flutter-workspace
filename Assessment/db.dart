import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflitedb/main.dart';

class Mydb
{
  late Database db;
  Future open()async
  {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath,'xyz.db');
    print(path);
    db = await openDatabase(path,version: 1,onCreate:(Database db, int version) async
    {
      await db.execute('''
                    CREATE TABLE IF NOT EXISTS students( 
                          id primary key,
                          name varchar(255) not null,
                          surname varchar(255) not null,
                          email varchar(255) not null,
                          contact varchar(255) not null
                      );
                  ''');
      print("Table Created");
    });
  }
  Future<Map<dynamic,dynamic>?> getsinglerecord(String email)async
  {
    List<Map> maps = await db.query('students', where: 'id = ?',whereArgs: [db.toString()]);
    if (maps.length > 0)
    {
      return maps.first;
    }
    return null;
  }
}