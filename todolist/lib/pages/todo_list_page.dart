import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({super.key});

  final TextEditingController todoController = TextEditingController();

  void addNewTodo() {
    String addTodo = todoController.text;
    //ignore: avoid_print
    print(addTodo);
    todoController.clear();
  }

  void deleteAllTodo() {
    //todoController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Lista de Tarefas',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),


            SizedBox(
              height: 16,
            ),


            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: todoController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Adicione uma tarefa',
                      hintText: 'Ex: Estudar Flutter',
                    ),
                  ),
                ),


                SizedBox(
                  width: 8,
                ),


                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    iconColor: Colors.white,
                    fixedSize: Size(80, 50),
                    padding: EdgeInsets.all(14),
                  ),
                  onPressed: addNewTodo,
                  child: Icon(Icons.add),
                ),

              ],
            ),

            SizedBox(width: 32),

            Row(
              children: [
                Expanded(
                  child: Text('Você possui tarefas pendentes'),
                ),

                SizedBox(height: 200),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    iconColor: Colors.white,
                    padding: EdgeInsets.all(14),
                    fixedSize: Size(80, 50),
                  ),
                  onPressed: deleteAllTodo,
                  child: Icon(
                    Icons.delete_forever,
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
