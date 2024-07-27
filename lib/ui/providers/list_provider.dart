import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier{
  List<Todo> todos = [];
  DateTime selectedDate = DateTime.now();
  onDateSelected(newDateTime){
    selectedDate = newDateTime;
    notifyListeners();
  }
  refreshTodos async()
}