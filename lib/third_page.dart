import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/controller/list_controller.dart';
import 'package:getxapp/controller/tap_controller.dart';
import 'package:getxapp/my_home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    //TapController controller = Get.find();
    //ListController listController=Get.put(ListController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Get.back();}, //go to back page
          icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>
            Column(
              children: [
                Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                //child: Center(child: Text(controller.x.toString()),),
                child: Center(child: Text("Total value: "+Get.find<TapController>().z.toString()),),
              ),
                Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                //child: Center(child: Text(controller.x.toString()),),
                child: Center(child: Text("Y value: "+Get.find<TapController>().y.value.toString()),),
              ),
              ],
            )
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=>MyHomePage());
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                //child: Center(child: Text(controller.x.toString()),),
                child: Center(child: Text("X value: "+Get.find<TapController>().x.toString()),),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().increaseY();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                //child: Center(child: Text(controller.x.toString()),),
                child: Center(child: Text("Increase Y"),),
              ),
            ), 
            GestureDetector(
              onTap: () {
                Get.find<TapController>().totalXY();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                //child: Center(child: Text(controller.x.toString()),),
                child: Center(child: Text("Total X+Y "),),
              ),
            ), 
             GestureDetector(
              onTap: () {
                Get.find<ListController>().setValues(Get.find<TapController>().z);
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                //child: Center(child: Text(controller.x.toString()),),
                child: Center(child: Text("Save Total"),),
              ),
            ), 
          ],
        ) ,
      ),
    );
  }
}