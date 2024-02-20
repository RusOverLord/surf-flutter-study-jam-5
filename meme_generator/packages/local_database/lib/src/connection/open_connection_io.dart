import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

QueryExecutor openConnection(String name) => LazyDatabase(() async {
      if (Platform.isWindows || Platform.isLinux) {
        sqfliteFfiInit();
        sqflite.databaseFactory = databaseFactoryFfi;
      }

      final folderPath = await sqflite.getDatabasesPath();
      final file = File(path.join(folderPath, '$name.sqlite'));

      return NativeDatabase(file);
    });
