import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            GestureDetector(
              onTap: () {
                Get.to(()=>ThirdPage());
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFF89dad0)
                ),
                child: Center(child: Text("Go to Third Page"),),
              ),
            ), 
          ],
        ) ,
      ),
    );
  }
}