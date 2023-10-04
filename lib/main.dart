import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getxapp/helper/init_controllers.dart' as di;
import 'package:getxapp/helper/init_dependency.dart';
import 'package:getxapp/my_home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  //For other way of initialization we don't need these above two lines.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( //when you have navigation system, need to change it from MaterialApp
      //initialBinding: InitDep(),//For the other way of initialization, need this thing.
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

