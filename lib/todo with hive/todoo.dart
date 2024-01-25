import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:zorba_greek/sqflite/sqfoperation.dart';

void main()async {
WidgetsFlutterBinding.ensureInitialized();
//hive initialisation
  await Hive.initFlutter();
  await Hive.openBox('taskbox');

  runApp(MaterialApp(
    home: hivetodo(),
  ));
}

class hivetodo extends StatefulWidget {
  @override
  State<hivetodo> createState() => hivestate();
}

class hivestate extends State<hivetodo> {
  // bool isLoading = true;
  List<Map<String, dynamic>>task = [];
  final tbox = Hive.box('taskbox');

  @override
  void initState() {
    super.initState();
    // loadtask();
  }

  Future<void> createTask(Map<String, dynamic>task) async {
    await tbox.add(task);
    loadtask();
  }

  void loadtask() {
    final data = tbox.keys.map((id) {
      final value = tbox.get(id);
      return {'key': id, 'name': value['name'], 'details': value['details']};
    }).toList();
    setState(() {
      task = data.reversed.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyNotes"),
      ),
      body: ListView.builder(
          itemCount: task.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(task[index]['name']),
                subtitle: Text(task[index]['details']),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            showForm(context,task[index]['key']);
                          },
                          icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete)),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(context ,null),
        child:Icon(Icons.add),
      ),
    );
  }

  final name_controller = TextEditingController();
  final details_controller = TextEditingController();

  void showForm(BuildContext context,int? id ) async {
//     if (id != null) {}

    showModalBottomSheet(
        context: context,
        elevation: 3,
        isScrollControlled: true,
        builder: (context) =>
            Container(
              padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: MediaQuery
                      .of(context)
                      .viewInsets
                      .bottom + 120),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: name_controller,
                    decoration: const InputDecoration(
                        hintText: "Title", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: details_controller,
                    decoration: const InputDecoration(
                        hintText: "Enter note", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (id == null) {
                          createTask({'name': name_controller.text,
                            'details': details_controller.text});
                        }
                        name_controller.text="";
                        details_controller.text="";
                        Navigator.of(context).pop();
                      },

                      child: Text(id == null ? 'Create task' : 'update task'))

                ],
              ),
            ));
  }

}
