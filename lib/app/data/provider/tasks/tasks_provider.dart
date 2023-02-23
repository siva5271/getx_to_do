import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_to_do/app/core/utils/keys.dart';
import 'package:getx_to_do/app/data/model/task_model.dart';
import 'package:getx_to_do/app/data/services/storage/services.dart';

class TaskProvider {
  StorageService _storageService = Get.find<StorageService>();
  List<Task> getTasks() {
    List<Task> tasks = [];
    jsonDecode(_storageService.read(taskKey).toString())
        .forEach((element) => tasks.add(Task.fromJson(element)));
    return tasks;
  }

  void witeTasks(List<Task> tasks) {
    _storageService.write(taskKey, jsonEncode(tasks));
  }
}
