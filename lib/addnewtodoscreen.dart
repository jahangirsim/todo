import 'package:flutter/material.dart';
import 'package:todo3/todo.dart';

class AddNewToDo extends StatefulWidget {
  const AddNewToDo({super.key});

  @override
  State<AddNewToDo> createState() => _AddNewToDoState();
}

class _AddNewToDoState extends State<AddNewToDo> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController =
      TextEditingController();
  //final TextEditingController _dateTimeTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new To Do'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter To Do Title';
                  }
                  return null;
                },
                maxLength: 50,
                decoration: const InputDecoration(
                  hintText: 'To Title',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (String? value){
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter To Do Description';
                  }
                  return null;
                },
                maxLines: 5,
                maxLength: 250,
                decoration: const InputDecoration(
                  hintText: 'To Do Description',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ToDo todo = ToDo(_titleTEController.text, _descriptionTEController.text, DateTime.now());
                      Navigator.pop(context, todo);
                    }
                  },
                  child: const Text('Add To Do'))
            ],
          ),
        ),
      ),
    );
  }
}
