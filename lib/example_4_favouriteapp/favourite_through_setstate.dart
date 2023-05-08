import 'package:flutter/material.dart';

class ExampleFourThroughSetState extends StatefulWidget {
  const ExampleFourThroughSetState({Key? key}) : super(key: key);

  @override
  State<ExampleFourThroughSetState> createState() => _ExampleFourThroughSetStateState();
}

class _ExampleFourThroughSetStateState extends State<ExampleFourThroughSetState> {
  List<String> fruitList = ["Orange", "Apple", "Mango", "Peach"];
  List<String> tempFruitList = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExampleFourThroughSetState"),
        centerTitle: true,
      ),

      body: ListView.builder(
          itemCount: fruitList.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                onTap: (){
// if items are already added then remove and if not added then add
                if(tempFruitList.contains(fruitList[index].toString())){
                  tempFruitList.remove(fruitList[index].toString());
                }
                else{
                  tempFruitList.add(fruitList[index].toString());
                }
                  setState(() {

                  });
                },
                title: Text(fruitList[index].toString()),

 // if items in fruitList and tempFruitList are matching at any index then we show color if they are matched
                trailing: tempFruitList.contains(fruitList[index].toString()) ?
                Icon(Icons.favorite, color: Colors.red,)
                    : Icon(Icons.favorite_border_outlined),
              ),
            );
      }),
    );
  }
}

