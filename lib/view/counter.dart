import 'package:counter_app_practice/controller/counter_controller.dart';
import 'package:counter_app_practice/controller/counter_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {


    final controller = Get.put(CounterController());


    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App",style: TextStyle(
          fontSize: 30
        ),),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


        Obx((){
          return Text(controller.counter.value.toString(),
           style: TextStyle(
           fontSize: 40,
           ),);
        
        }),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             

              IconButton(style: IconButton.styleFrom(
                backgroundColor: Colors.red
              ), onPressed: (){
                controller.decreament();
              }, icon:Icon( Icons.remove,color: Colors.white,)),


 IconButton(style: IconButton.styleFrom(
                backgroundColor: Colors.red
              ), onPressed: (){
                controller.increament();
              }, icon:Icon( Icons.add,color: Colors.white,)),



            ],
          ),

          ElevatedButton(onPressed: (){
            controller.counter.value =0;

            Get.snackbar(
              "Success", 
              "you success this proceess and try next",
              backgroundColor: Colors.blue,
              colorText: Colors.white,
              snackPosition: SnackPosition.BOTTOM
              );
          
          }, child: Text("Click")),

          SizedBox(
            height: 10,
          ),


            ElevatedButton(onPressed: (){


              Get.to (()=>CounterResult(),
              arguments: {
                "name":"Rimon Chakma",
                "class":"10",
                "isPassed":false
              }
              );
              
              
          
          
          }, child: Text("show result"))
        ],
      ),
    );
  }
}