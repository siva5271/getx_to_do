// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:getx_to_do/app/data/model/task_model.dart';
import 'package:getx_to_do/app/data/provider/tasks/tasks_provider.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({
    required this.taskProvider,
  });
  List<Task> getTasks() => taskProvider.getTasks();
  void writeTasks(List<Task> taskList) => taskProvider.witeTasks(taskList);
}
