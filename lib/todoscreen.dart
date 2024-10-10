import 'package:flutter/material.dart';
import 'package:todo3/addnewtodoscreen.dart';
import 'package:todo3/todo.dart';

class ToDoScreen3 extends StatefulWidget {
  const ToDoScreen3({super.key});

  @override
  State<ToDoScreen3> createState() => _ToDoScreen3State();
}

class _ToDoScreen3State extends State<ToDoScreen3> {

  List<ToDo> todolist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do Screen'),
        backgroundColor: Colors.grey.shade400,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
            itemCount: todolist.length,
            itemBuilder: (context, index) {
              return ListTile(
                title:  Text(todolist[index].title),
                subtitle:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(todolist[index].description),
                    Text(todolist[index].dateTime.toString()),
                  ],
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete_forever_outlined)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final ToDo? result = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddNewToDo()));
          if (result != null) {
            todolist.add(result);
            setState(() {});
          }

        },
        backgroundColor: Colors.blueAccent.shade100,
        splashColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
