import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_examples/example_3_switch_buttons/examp_three_controller.dart';

import '../example_4_favouriteapp/favourite_through_getx.dart';

class ExampleThreeThroughGetX extends StatefulWidget {
  const ExampleThreeThroughGetX({Key? key}) : super(key: key);

  @override
  State<ExampleThreeThroughGetX> createState() => _ExampleThreeThroughGetXState();
}

class _ExampleThreeThroughGetXState extends State<ExampleThreeThroughGetX> {
  ExampleThreeController controller = Get.put(ExampleThreeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Three Through Set State"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Get.to(FavouriteAppThroughGetx());
          }, icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications"),
                Obx(() =>  Switch(value: controller.notification.value, onChanged: (value){
                  controller.setNotification(value);
                })
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}

