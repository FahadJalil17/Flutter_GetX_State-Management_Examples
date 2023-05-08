import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../example_5_image_picker/image_picker_home_screen.dart';
import 'favourite_controller.dart';

class FavouriteAppThroughGetx extends StatefulWidget {
  const FavouriteAppThroughGetx({Key? key}) : super(key: key);

  @override
  State<FavouriteAppThroughGetx> createState() => _FavouriteAppThroughGetxState();
}

class _FavouriteAppThroughGetxState extends State<FavouriteAppThroughGetx> {
  FavouriteController favouriteController = Get.put(FavouriteController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite App Through Getx"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Get.to(ExampleFiveImagePickerHomeScreen());
          }, icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: ListView.builder(
          itemCount: favouriteController.fruitList.length,
          itemBuilder: (context, index){
        return Card(
          child: ListTile(
            onTap: (){
              if(favouriteController.tempFruitList.contains(favouriteController.fruitList[index].toString())){
                favouriteController.removeFromFavourite(favouriteController.fruitList[index].toString());
              }
              else{
                favouriteController.addToFavourite(favouriteController.fruitList[index].toString());
              }
            },

            title: Text(favouriteController.fruitList[index].toString()),
            trailing: Obx(() =>  favouriteController.tempFruitList.contains(favouriteController.fruitList[index].toString())
                ? Icon(Icons.favorite, color: Colors.red,)
                : Icon(Icons.favorite_border_outlined),)
          ),
        );
      }),
    );
  }
}

