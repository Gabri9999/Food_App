import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_controller.dart';

class TotalPage extends StatelessWidget{
 TotalPage({Key? key}) : super(key: key);
  
  final MyController c = Get.put(MyController());

 @override
  Widget build(BuildContext context){
     return Scaffold(
      body: Container(
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text("Totale Articoli",
             style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
             ),),
             const SizedBox(height: 20,),
              //value del costo totale e una variabile di stato quindi ci vuole di nuovo OBX
              Obx(() => Text(c.sum.toString(),
                style: const TextStyle(
                  fontSize: 30,
                ),
                )),
             const SizedBox(height: 20,),
             Container(
                  width: 102,
                  height: 102,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                  ),
                  // ignore: avoid_returning_null_for_void
                  onPressed: () =>Get.back(), child: const Text("Torna indietro",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black
                  ),
                  ),
                  ),
                )
          ],
        ),
      ),
     )
     ); 
  }

}
