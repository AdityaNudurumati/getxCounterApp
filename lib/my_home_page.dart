import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/controller/tap_controller.dart';
import 'package:getxapp/first_page.dart';
import 'package:getxapp/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //TapController controller =Get.put(TapController());//created an instance of TapController class.
    //This is called dependency injection.             //controller is the instance of TapController.
    TapController controller = Get.find();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_){
              return Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                child: Center(child:Text("X value: "+controller.x.toString())),
              );
            }),//GetBuilder takes a controller class,needs something that returns controller
            GestureDetector(
              onTap: () {
                controller.increaseX();
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                child: Center(child: Text("Tap me to Increase X"),),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=>FirstPage());//navigate to next page
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                child: Center(child: Text("Go to First Page"),),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=>SecondPage());
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                child: Center(child: Text("Second Page"),),
              ),
            ), 
             ],
        ),
      ),
    );
  }
}