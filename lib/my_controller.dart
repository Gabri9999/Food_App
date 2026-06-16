import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{

  var counters = [
  0.obs, // carne
  0.obs, // frutta
  0.obs, // verdura
];
  
  int get sum => counters.fold(
  0,
  (total, item) => total + item.value,
);
  //ora ho bisogno di metodi per fare increase e decrease dei bottoni che ho creato

   increment(int i){
      counters[i].value++;
   }

   decrement(int i){
       if(counters[i].value<=0){
          Get.snackbar(
          "Stai aggiungendo un prodotto al carrello", "Errore: Non puo' essere meno di zero",
          icon:const Icon(Icons.add_alarm),
          barBlur: 20,
          isDismissible: true,
          duration: const Duration(seconds: 4),
          );
       }
       else{
      counters[i].value--;
       }
   }

  /* increment1(){
      frutta.value++;
   }

   decrement1(){
       if(frutta.value<=0){
          Get.snackbar(
          "Stai comprando la frutta", "Errore: Non puo' essere meno di zero",
          icon:const Icon(Icons.add_alarm),
          barBlur: 20,
          isDismissible: true,
          duration: const Duration(seconds: 3),
          );
       }
       else{
      frutta.value--;
       }
   }

   increment2(){
      verdura.value++;
   }

   decrement2(){
       if(verdura.value<=0){
          Get.snackbar(
          "Stai comprando la verdura", "Errore: Non puo' essere meno di zero",
          icon:const Icon(Icons.add_alarm),
          barBlur: 20,
          isDismissible: true,
          duration: const Duration(seconds: 3),
          );
       }
       else{
      verdura.value--;
       }
   } */

}