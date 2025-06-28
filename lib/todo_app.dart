import 'package:flutter/material.dart';

import 'models/todo_model.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController titleController = TextEditingController();
  List<Todo> todoList = [];

  void addTodo(String title) {
    setState(() {
      todoList.add(Todo(title: title));
    });
  }

  void deleteTodo(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  void updateTodo(int index, String newTitle) {
    setState(() {
      todoList[index].title = newTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            final singleTodo = todoList[index];
            return Card(
              child: ListTile(
                title: Text(singleTodo.title),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            titleController.text = singleTodo.title;
                            showDialog(
                                context: context,
                                builder: (_) {
                                  return AlertDialog(
                                    title: Text("EDIT TODO TASK"),
                                    content: TextField(
                                      controller: titleController,
                                      decoration:
                                          InputDecoration(hintText: "Enter"),
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: Text("Cancel")),
                                      TextButton(
                                          onPressed: () {
                                            updateTodo(
                                                index, titleController.text);
                                            setState(() {
                                              titleController.clear();
                                              Navigator.pop(context);
                                            });
                                          },
                                          child: Text("Update")),
                                    ],
                                  );
                                });
                          },
                          icon: Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            deleteTodo(index);
                          },
                          icon: Icon(Icons.delete)),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  title: Text("ADD TODO TASK"),
                  content: TextField(
                    controller: titleController,
                    decoration: InputDecoration(hintText: "Enter"),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Text("Cancel")),
                    TextButton(
                        onPressed: () {
                          addTodo(titleController.text);
                          setState(() {
                            Navigator.pop(context);
                            titleController.clear();
                          });
                        },
                        child: Text("Add")),
                  ],
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
