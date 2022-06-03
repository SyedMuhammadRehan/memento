import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memento/data/taskmodeldata.dart';
import 'package:memento/domain/model/taskmodel.dart';

import 'task_tile.dart';

class TaskList extends ConsumerStatefulWidget {
  final List<TaskModel> taskmodelList;
  const TaskList({
    Key? key,
    required this.taskmodelList,
  }) : super(key: key);
  @override
  ConsumerState<TaskList> createState() => _TaskListState();
}

class _TaskListState extends ConsumerState<TaskList> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final products = ref.watch(todolistprovider);
    return ListView.builder(
        itemCount: widget.taskmodelList.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return TaskTile(
            isChecked: product.isdone,
            title: product.name,
            toggleDone: (newvalue) {
              setState(() {
                product.toggleDone();
              });
            },
          );
        });
  }
}
