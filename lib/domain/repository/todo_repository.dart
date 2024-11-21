import 'package:flutter_native_sample/domain/model/todo.dart';

abstract interface class TodoRepository {
  Future<Todo> getTodo(int id);
}