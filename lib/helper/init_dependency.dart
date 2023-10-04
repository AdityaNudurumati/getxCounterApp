//Another way of initialization
import 'package:get/get.dart';
import 'package:getxapp/controller/list_controller.dart';
import 'package:getxapp/controller/tap_controller.dart';

class InitDep implements Bindings{
  void dependencies(){
    Get.lazyPut(()=>TapController());
    Get.lazyPut(()=>ListController());
  }
}