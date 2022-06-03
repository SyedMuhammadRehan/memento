import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memento/data/taskmodeldata.dart';

class TaskModel {
  final String name;
  bool isdone;
  TaskModel({
    required this.name,
    this.isdone = false,
  });
  void toggleDone() {
    isdone = !isdone;
  }
}

class Todomodellist extends StateNotifier<List<TaskModel>> {
  List<TaskModel> taskmodelList = [
    TaskModel(name: 'Buuy Coffee'),
    TaskModel(name: 'Done Statemanagement'),
    TaskModel(name: 'Buy Black Cotton jeans')
  ];

  Todomodellist(List<TaskModel>? initialTodos) : super(initialTodos ?? []);
  void addtask(String newtask) {
    final task = TaskModel(name: newtask);
    taskmodelList.add(task);
  }
}

final todolistprovider =
    StateNotifierProvider<Todomodellist, List<TaskModel>>((ref) {
  return Todomodellist(taskmodelList);
});
