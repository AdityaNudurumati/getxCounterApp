import 'package:get/get.dart';

class TapController extends GetxController{
  int _x=0;
  int get x => _x;

  RxInt _y=0.obs;
  RxInt get y=>_y;
//RxInt means: Reactive integer; .obs means:observables
  RxInt _z=0.obs;
  int get z=>_z.value;
  //RxInt comes from GetX which means reactive.
  //Without obs you need to use GetBuilder() the view, with obs you need to use Obx()
  void totalXY(){
    _z.value=_x+_y.value;
  }
  void increaseX(){
    _x++;
    update();
  }
  void decreaseX(){
    _x--;
    update();
  }
  void increaseY(){
    _y.value++; //if it's a obs type, need to use value property.
    //update(); don't need this, bcz it's a obs type
  }
  void decreaseY(){
    _y.value--;
    //update();
  }
}