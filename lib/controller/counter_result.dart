

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CounterResult extends StatelessWidget {




  const CounterResult({super.key,});

  @override
  Widget build(BuildContext context) {

    final arg = Get.arguments;
    return Scaffold(

      appBar: AppBar(
        title: Text("Result",style: TextStyle(
          fontSize: 30
        ),),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Center(child: Text( "name : ${arg["name"]}\nclass :${arg["class"]}" ,style: TextStyle(
            fontSize: 40
          ),)),
          IconButton(style: IconButton.styleFrom(
            backgroundColor: Colors.red
          ),  onPressed: (){}, icon: Icon(arg["isPassed"]? Icons.check: Icons.back_hand,color:arg["isPassed"]? Colors.white:Colors.blue,)),
          
          SizedBox(
            height: 10,
          ),
           
          ElevatedButton(onPressed: (){
            Get.back();
          }, child: Text("Go to counter"))
        ],
      ),

    );
  }
}