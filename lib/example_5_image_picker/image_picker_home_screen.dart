import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_examples/example_5_image_picker/image_picker_controller.dart';

import '../example_6_api_login_signup/login_screen.dart';

class ExampleFiveImagePickerHomeScreen extends StatefulWidget {
  const ExampleFiveImagePickerHomeScreen({Key? key}) : super(key: key);

  @override
  State<ExampleFiveImagePickerHomeScreen> createState() => _ExampleFiveImagePickerHomeScreenState();
}

class _ExampleFiveImagePickerHomeScreenState extends State<ExampleFiveImagePickerHomeScreen> {

  // controller is initialized and dependency injection is done here
  ImagePickerController controller = Get.put(ImagePickerController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker Example"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Get.to(LoginScreen());
          }, icon: Icon(Icons.arrow_forward))
        ],
      ),

      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 180,
                backgroundImage: controller.imagePath.isNotEmpty ?  // when image is picked from camera or gallery it is file
                FileImage(File(controller.imagePath.toString())) :
                null ,
              ),
            ),
            TextButton(onPressed: (){
              controller.getImage();
            }, child: Text("Pick Image"))
          ],
        );
      })
    );
  }
}

