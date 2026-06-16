import 'package:flutter/cupertino.dart';
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
             Text("Totale Articoli",
             style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
             ),),
             SizedBox(height: 20,),
              //value del costo totale e una variabile di stato quindi ci vuole di nuovo OBX
              Obx(() => Text("${c.sum.toString()}",
                style: TextStyle(
                  fontSize: 30,
                ),
                )),
             SizedBox(height: 20,),
             Container(
                  width: 100,
                  height: 100,
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
                  onPressed: () =>Get.back(), child: Text("Torna indietro",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
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
