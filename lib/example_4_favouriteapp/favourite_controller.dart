
import 'package:get/get.dart';

class FavouriteController extends GetxController{
RxList<String> fruitList = ["Apple", "Orange", "Banana", "Peach"].obs;
RxList<dynamic> tempFruitList = [].obs;

addToFavourite(String value){
  tempFruitList.add(value);
}

removeFromFavourite(String value){
  tempFruitList.remove(value);
}

}
