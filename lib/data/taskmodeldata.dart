import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:memento/domain/model/taskmodel.dart';

List<TaskModel> taskmodelList = [
  TaskModel(name: 'Buuy Coffee'),
  TaskModel(name: 'Done Statemanagement'),
  TaskModel(name: 'Buy Black Cotton jeans')
];
final listProvider = Provider<List<TaskModel>>((ref) {
  return taskmodelList;
});
