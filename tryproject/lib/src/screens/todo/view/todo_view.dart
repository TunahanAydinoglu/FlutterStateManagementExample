import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tryproject/src/screens/todo/view-model/todo_view_model.dart';

class TodoView extends StatelessWidget {
  final _viewModel = TodoViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (_) {
          return _viewModel.isEven
              ? Text("Counter Tek Veri Listeleniyor")
              : Text("Counter Cift Veri Listelenmiyor");
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _viewModel.getAllTodos(),
      ),
      body: Center(
        child: Observer(builder: (_) {
          return _viewModel.isEven
              ? listViewBuilder()
              : Text("Counter Cift Veri Listelenmiyor");
        }),
      ),
    );
  }

  ListView listViewBuilder() {
    return ListView.separated(
      itemCount: _viewModel.todos.length,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) => ListTile(
        title: Text(_viewModel.todos[index].title),
        leading: Text(_viewModel.todos[index].id.toString()),
        subtitle: Text(_viewModel.todos[index].completed.toString()),
      ),
    );
  }
}
