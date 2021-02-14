// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoViewModel on _TodoViewModelBase, Store {
  Computed<bool> _$isEvenComputed;

  @override
  bool get isEven => (_$isEvenComputed ??=
          Computed<bool>(() => super.isEven, name: '_TodoViewModelBase.isEven'))
      .value;

  final _$todosAtom = Atom(name: '_TodoViewModelBase.todos');

  @override
  List<Todo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(List<Todo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$counterAtom = Atom(name: '_TodoViewModelBase.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$getAllTodosAsyncAction =
      AsyncAction('_TodoViewModelBase.getAllTodos');

  @override
  Future<void> getAllTodos() {
    return _$getAllTodosAsyncAction.run(() => super.getAllTodos());
  }

  @override
  String toString() {
    return '''
todos: ${todos},
counter: ${counter},
isEven: ${isEven}
    ''';
  }
}
