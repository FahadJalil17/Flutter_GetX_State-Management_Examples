import 'package:flutter/material.dart';

class ExampleThreeThroughSetState extends StatefulWidget {
  const ExampleThreeThroughSetState({Key? key}) : super(key: key);

  @override
  State<ExampleThreeThroughSetState> createState() => _ExampleThreeThroughSetStateState();
}

class _ExampleThreeThroughSetStateState extends State<ExampleThreeThroughSetState> {
  bool notification = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Three Through Set State"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications"),
                Switch(value: notification, onChanged: (value){
                  notification = value;
                  setState(() {

                  });
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}

