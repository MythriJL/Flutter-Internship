import 'package:flutter/material.dart';
import './todo.dart';

typedef ToggleTodoCallback = void Function(Todo, bool);

class TodoList extends StatelessWidget {
  TodoList({@required this.todos, this.onTodoToggle});
  final List<Todo> todos;
  final ToggleTodoCallback onTodoToggle;

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];

    return Dismissible(
        key: ObjectKey(todos[index]),
         onDismissed: (direction) {
          todos.remove(todo);
        },
        background: Container(color: Color.fromRGBO(160,41,54,1)),
        child: CheckboxListTile(
          value: todo.isDone,
          title: Text(todo.title),
          onChanged: (bool isChecked) {
            onTodoToggle(todo, isChecked);

          },
        ),
       
        
        );
        
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: todos.length,
    );
  }
}
