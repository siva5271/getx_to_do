import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_to_do/app/data/services/storage/services.dart';
import 'package:getx_to_do/app/presentation/screen/homeScreen/home_screen.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(
    () => StorageService().init(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
