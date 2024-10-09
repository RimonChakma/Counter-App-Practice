import 'package:get/get.dart';

class CounterController extends GetxController{

  RxInt counter = RxInt(0);

  increament(){
    counter.value ++;
    update();
  }

   decreament(){
    counter.value --;
    update();
  }

  


}