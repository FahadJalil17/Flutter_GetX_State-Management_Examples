import 'package:flutter/material.dart';

class ExampleTwoSetState extends StatefulWidget {
  const ExampleTwoSetState({Key? key}) : super(key: key);

  @override
  State<ExampleTwoSetState> createState() => _ExampleTwoSetStateState();
}

class _ExampleTwoSetStateState extends State<ExampleTwoSetState> {
  
  double opacity = .4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Two Through SetState"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.teal.withOpacity(opacity),
          ),
          Slider(value: opacity, onChanged: (value){
            opacity = value;
            setState(() {

            });
          })
        ],
      ),
    );
  }
}

