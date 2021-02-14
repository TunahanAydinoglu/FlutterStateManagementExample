import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:tryproject/src/screens/base/model/todo_model.dart';
part 'todo_view_model.g.dart';

class TodoViewModel = _TodoViewModelBase with _$TodoViewModel;

abstract class _TodoViewModelBase with Store {}

@observable
List<TodoModel> todos = [];

@observable
int counter = 0;

@computed
bool get isEven => counter % 2 == 1;

final url = "https://jsonplaceholder.typicode.com/todos";

@action
Future<void> getAllTodos() async {
  final response = await Dio().get(url);
  counter++;
  if (response.statusCode == HttpStatus.ok) {
    final responseData = response.data as List;
    todos = responseData.map((e) => TodoModel.fromJson(e)).toList();
  }
}
