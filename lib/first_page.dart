import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/controller/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();//can find TapController in different class.
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
          children: [
            GetBuilder<TapController>(
              //init: TapController(),//initialize it here if we don't mention it above: TapController controller = Get.find();
              //builder:(controller){
              builder: (_){ 
              return Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                child: Center(child: Text("X value: "+controller.x.toString()),),
              );
            }),
            GestureDetector(
              onTap: () {
                controller.decreaseX();
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                child: Center(child: Text("Tap to Decrease X"),),
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}