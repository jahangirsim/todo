import 'package:flutter/material.dart';

class EditToDo extends StatefulWidget {
  const EditToDo({super.key});

  @override
  State<EditToDo> createState() => _EditToDoState();
}

class _EditToDoState extends State<EditToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new To Do'),

      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextFormField(
              maxLength: 50,

            ),
            const SizedBox(height: 20,),
            TextFormField(
              maxLines: 5,
              maxLength: 250,

            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: const Text('Add To Do'))
          ],
        ),
      ),
    );
  }
}
