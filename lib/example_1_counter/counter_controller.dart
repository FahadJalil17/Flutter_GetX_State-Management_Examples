
import 'package:get/get.dart';

class CounterController extends GetxController{
  // Any datatype will come from GETX => it has it's own datatype in front of them we write Rx
  // obs is reactive and it's value will be changed
  RxInt counter = 1.obs; // obs is observables => it monitor/manages that there is a change in counter or not

  // For listening this change in home screen we have Obx() function
incrementCounter(){
  counter.value++;
  // print(counter.value);
}


}
