import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../example_2_slider/slider_example_two.dart';
import 'counter_controller.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({Key? key}) : super(key: key);

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {

  // it is called dependency injection we are adding dependency/controller
  final CounterController controller = Get.put(CounterController()); // controller will be added/injected to view

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example With GetX"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Get.to(ExampleTwoThroughGetx());
          }, icon: Icon(Icons.arrow_forward))
        ],
      ),
      body: Center(
        // controller will give the access of counter
        child: Obx((){  // Obx directly listen the obs value
          return Text(controller.counter.toString(), style: TextStyle(fontSize: 30));
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}




