import 'dart:ffi';

import 'package:flutter/material.dart';
import 'database_helper.dart';

class IOdata {
  IOdata(){}

  final dbHelper = DatabaseHelper.instance;

  void insert(String name, int age) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnName : name,
      DatabaseHelper.columnAge  : age
    };
    final id = await dbHelper.insert(row);
    print('inserted row id: $id');
  }

  Future<List<Map<String, dynamic>>> query() async {
    final allRows = await dbHelper.queryAllRows();
    print('query all rows:');
    allRows.forEach(print);
    return allRows;
  }

  void update(int id, String name, int age) async {
    // row to update
    Map<String, dynamic> row = {
      DatabaseHelper.columnId   : id,
      DatabaseHelper.columnName : name,
      DatabaseHelper.columnAge  : age
    };
    final rowsAffected = await dbHelper.update(row);
    print('updated $rowsAffected row(s)');
  }

  void delete(int id) async {
    // Assuming that the number of rows is the id for the last row.
    //final id = await dbHelper.queryRowCount();
    final rowsDeleted = await dbHelper.delete(id);
    print('deleted $rowsDeleted row(s): row $id');
  }


}