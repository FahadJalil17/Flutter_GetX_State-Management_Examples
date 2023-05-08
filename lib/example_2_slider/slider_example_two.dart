import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../example_3_switch_buttons/example_three.dart';
import 'example_two_controller.dart';


class ExampleTwoThroughGetx extends StatefulWidget {
  const ExampleTwoThroughGetx({Key? key}) : super(key: key);

  @override
  State<ExampleTwoThroughGetx> createState() => _ExampleTwoThroughGetxState();
}

class _ExampleTwoThroughGetxState extends State<ExampleTwoThroughGetx> {

  // we have injected dependency in Getx
  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Two Through GetX"),
        actions: [
          IconButton(onPressed: (){
            Get.to(ExampleThreeThroughGetX());
          }, icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),

          // we want to rebuild only Container and Slider widget

          Obx((){
            return Container(
              height: 200,
              width: 200,
              color: Colors.teal.withOpacity(exampleTwoController.opacity.value),
            );
          }),

          Obx((){
            return Slider(value: exampleTwoController.opacity.value, onChanged: (value){
              exampleTwoController.setOpacity(value);   // calling setOpacity Method here
            });
          })

        ],
      ),
    );;
  }
}



