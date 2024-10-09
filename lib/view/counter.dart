import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App",style: TextStyle(
          fontSize: 30
        ),),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("50",style: TextStyle(
              fontSize: 40,
              
            ),),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(style: IconButton.styleFrom(
                backgroundColor: Colors.red
              ), onPressed: (){}, icon:Icon( Icons.remove,color: Colors.white,)),

              IconButton(style: IconButton.styleFrom(
                backgroundColor: Colors.red
              ), onPressed: (){}, icon:Icon( Icons.add,color: Colors.white,))
            ],
          ),

          ElevatedButton(onPressed: (){}, child: Text("Click"))
        ],
      ),
    );
  }
}