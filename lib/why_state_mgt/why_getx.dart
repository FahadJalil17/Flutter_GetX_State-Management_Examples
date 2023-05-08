import 'dart:async';

import 'package:flutter/material.dart';

class WhyGetXScreen extends StatefulWidget {
  const WhyGetXScreen({Key? key}) : super(key: key);

  @override
  State<WhyGetXScreen> createState() => _WhyGetXScreenState();
}

class _WhyGetXScreenState extends State<WhyGetXScreen> {
  int x = 1;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     x++;
  //     setState(() {
  //
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Why GetX state management"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(
            child: Text(x.toString(), style: TextStyle(fontSize: 30),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

