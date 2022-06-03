import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memento/data/taskmodeldata.dart';
import 'package:memento/domain/model/taskmodel.dart';
import 'package:memento/presentaion/taskscreen/addtask.dart';
import 'package:memento/presentaion/widgets/task_list.dart';

class TaskScreen extends ConsumerStatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends ConsumerState<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    final products = ref.watch(todolistprovider);

    // final toso = ref.watch(todolistprovider).toList();
    return Scaffold(
      appBar: AppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              "Memento",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent.shade700),
            ),
            Text(
              "Personal",
              style:
                  TextStyle(fontSize: 16, color: Colors.grey.withOpacity(0.5)),
            ),
            const Text(
              "Flutter Development",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            Text(
              products.isEmpty
                  ? "No Pending Items"
                  : products.length.toString(),
              style:
                  TextStyle(fontSize: 16, color: Colors.grey.withOpacity(0.7)),
            ),
            GestureDetector(
              child: Icon(
                Icons.more_horiz_sharp,
                color: Colors.grey.withOpacity(0.8),
              ),
            )
          ]),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: TaskList(
            taskmodelList: taskmodelList,
          ),
        ))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              enableDrag: true,
              isScrollControlled: true,
              context: context,
              builder: (context) => AddTask());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
