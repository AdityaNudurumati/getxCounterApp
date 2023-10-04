import 'package:get/get.dart';
import 'package:getxapp/controller/list_controller.dart';
import 'package:getxapp/controller/tap_controller.dart';

Future<void> init() async{
  Get.lazyPut(()=>TapController());
  Get.lazyPut(()=>ListController());
}