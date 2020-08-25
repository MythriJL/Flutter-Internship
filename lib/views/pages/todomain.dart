import './todo.dart';
import 'package:flutter/material.dart';
import './alertpage.dart';
import './todo_list.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {


  List<Todo> todos = [];
  _toggleTodo(Todo todo, bool isChecked) {
    setState(() {
       todo.isDone = isChecked;

      //  todos.remove(todo);
     });
   }

  _addTodo() async {
    final todo = await showDialog<Todo>(
      context: context,
      builder: (BuildContext context) {
        return NewTodoDialog();
      },
    );
    if (todo != null) {
      setState(() {
        todos.add(todo);
         final snackBar = SnackBar(
            content: Text('Item added. Swipe to delete'),
            backgroundColor: Color.fromRGBO(134, 85, 29, 1),
         );
         Scaffold.of(context).showSnackBar(snackBar);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TodoList(
        todos: todos,
        onTodoToggle: _toggleTodo,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addTodo,
      ),
    );
  }
}
