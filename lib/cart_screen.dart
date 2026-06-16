//import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:food_project/my_controller.dart';
import 'package:food_project/total_page.dart';
import 'package:food_project/widget/food_card.dart';
import 'package:get/get.dart';

//useremo GETX per fare il contatore +1 e -1 etc. del carrello, cioe che + e - funzionano come dovrebbero...

class CartScreen extends StatelessWidget {
  CartScreen({
    Key? key,
    }) : super(key: key);
   final MyController c = Get.put(MyController());  //c e una reference del controller "MyController" e quindi grazie a c, potro' accedere alla variabile "insalata"
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [ 

              
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  }, //backwward
                  child: InkWell(
  child: Icon(Icons.arrow_left),
  onTap: (){
      //action code when clicked
      print("The icon is clicked");
      Navigator.of(context).popUntil((route) => route.isFirst); //togli questa riga
  },
),
                ),
                InkWell(
  child: Icon(Icons.menu),
  onTap: (){
      //action code when clicked
      print("The icon is clicked");
  },
),

              ],
            ),




              Expanded(
                child: ListView.builder(
                  itemCount: FoodCard.foodcards.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListView(
                            shrinkWrap: true,
                      
                       children: [ Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                        children: [ CircleAvatar(
                          backgroundImage: AssetImage(FoodCard.foodcards[index].image),
                      ),
                       ] ),
                       ] ) ); } ),),   
                                   //qui dovrei mettere il circleavatar
                                    //QUI HO MESSO Expanded(Container()), prima di Row(
                                    
                                   Row(
                                        children:[ Container(
                                        width: 50,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: Colors.black,
                                        ),
                                        // ignore: avoid_returning_null_for_void
                                        child: IconButton(onPressed: ()=>c.increment(), icon: Icon(Icons.add,color: Colors.white,))
                                       ),
                                     
                                     SizedBox(width: 20,),
                                    Obx(() => Text("${c.carne.toString()}",
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                    )), //Obx serve per accedere alla variabile insalata within a widget (in un widget)
                                     SizedBox(width: 20,),
                                     Container(
                                      width: 50,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.black,
                                      ),
                                       child: IconButton(onPressed: ()=>c.decrement(), icon: Icon(Icons.remove,color: Colors.white,))
                                     ),
                                        ]
              ), 
                  
               SizedBox(height: 20,),



                                      Row(
                                        children:[ Container(
                                        width: 50,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: Colors.black,
                                        ),
                                        // ignore: avoid_returning_null_for_void
                                        child: IconButton(onPressed: ()=>c.increment1(), icon: Icon(Icons.add,color: Colors.white,))
                                       ),
                                     
                                     SizedBox(width: 20,),
                                    Obx(() => Text("${c.frutta.toString()}",
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                    )), //Obx serve per accedere alla variabile insalata within a widget (in un widget)
                                     SizedBox(width: 20,),
                                     Container(
                                      width: 50,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.black,
                                      ),
                                       child: IconButton(onPressed: ()=>c.decrement1(), icon: Icon(Icons.remove,color: Colors.white,))
                                     ),
                                        ]
              ), 
                  
               SizedBox(height: 20,),

              Row(
              children: [
                
                 Container(
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black,
                  ),
                  // ignore: avoid_returning_null_for_void
                  child: IconButton(onPressed: ()=>c.increment2(), icon: Icon(Icons.add,color: Colors.white,))
                 ),
                 SizedBox(width: 20,),
                Obx(() => Text("${c.verdura.toString()}",
                style: TextStyle(
                  fontSize: 30,
                ),
                )), //Obx serve per accedere alla variabile frutta within a widget (in un widget)
                 SizedBox(width: 20,),
                 Container(
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black,
                  ),
                   child: IconButton(onPressed: ()=>c.decrement2(), icon: Icon(Icons.remove,color: Colors.white,))
                 ),
              ],
            ), 
 

         //qui metto le parentesi       
                       
                             

              //qua dovrei mettere Row , Inizio Row
           
           
             Row(
              children: [
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
                  onPressed: () =>Get.to(()=>TotalPage()), child: Text("Totale Articoli",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),
                  ),
                  ),
                  ),
              ],
                ),
        ],
             ),
      ),
        );
    
    }

}