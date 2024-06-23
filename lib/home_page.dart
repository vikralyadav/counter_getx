

import 'package:counter/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter app"),
      ),
      body: Center(
        child: Obx(()  {
          return Text(controller.counter.toString(), style: TextStyle(fontSize: 71),);
        }),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increamentCounter();
          
        },
      ),
    );
  }
}