import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tryproject/src/core/base/base_state.dart';
import 'package:tryproject/src/screens/todo/view-model/todo_view_model.dart';

class TodoViewBase extends StatefulWidget {
  @override
  _TodoViewBaseState createState() => _TodoViewBaseState();
}

class _TodoViewBaseState extends BaseState<TodoViewBase> {
  final _viewModel = TodoViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: newMethod(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _viewModel.getAllTodos(),
        ),
        body: Container(
          child: Center(
            child: Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    "data",
                    style: themeData.textTheme.headline2
                        .copyWith(color: Colors.blue),
                  ),
                  FlatButton(onPressed: () {}, child: Text("button")),
                  IconButton(icon: Icon(Icons.adjust_rounded), onPressed: () {})
                ],
              ),
            ),
          ),
        ));
  }

  AppBar newMethod() {
    return AppBar(
      title: Observer(builder: (_) {
        return _viewModel.isEven
            ? Text("Counter Tek Veri Listeleniyor",
                style:
                    themeData.textTheme.headline6.copyWith(color: Colors.white))
            : Text("Counter Cift Veri Listelenmiyor");
      }),
    );
  }

  ListView get listViewBuilder => ListView.separated(
        itemCount: _viewModel.todos.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) => ListTile(
          title: Text(_viewModel.todos[index].title),
          leading: Text(_viewModel.todos[index].id.toString()),
          subtitle: Text(_viewModel.todos[index].completed.toString()),
        ),
      );
}
