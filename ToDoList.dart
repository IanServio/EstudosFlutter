import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<String> tasks = [];
  List<bool> isChecked = [];

  final TextEditingController txtTarefa = TextEditingController();

  void addTask(String task) {
    setState(() {
      tasks.add(task);
      isChecked.add(false);
    });
    txtTarefa.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do List'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: txtTarefa,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.book),
                labelText: "Tarefa",
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (txtTarefa.text.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('ERROR'),
                        content: Text('Preencha com alguma tarefa'),
                        actions: <Widget>[
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  addTask(txtTarefa.text);
                }
              },
              child: Text('Cadastrar'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Checkbox(
                      value: isChecked[index],
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked[index] = value!;
                        });
                      },
                    ),
                    title: Text(
                      tasks[index],
                      style: TextStyle(
                        decoration: isChecked[index]
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
