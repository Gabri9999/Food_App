import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{

  var frutta = 0.obs; //variabile di stato (che cambia, e posso vedere il cambiamento anche nello UI , perche' cambia lo stato)
  var verdura = 0.obs;
  var carne = 0.obs;
  int get sum=>frutta.value+verdura.value+carne.value;
  //ora ho bisogno di metodi per fare increase e decrease dei bottoni che ho creato

   increment(){
      carne.value++;
      
   }

   decrement(){
       if(carne.value<=0){
          Get.snackbar(
          "Stai comprando la carne", "Errore: Non puo' essere meno di zero",
          icon:Icon(Icons.add_alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3),
          );
       }
       else{
      carne.value--;
       }
   }

   increment1(){
      frutta.value++;
      
   }

   decrement1(){
       if(frutta.value<=0){
          Get.snackbar(
          "Stai comprando la frutta", "Errore: Non puo' essere meno di zero",
          icon:Icon(Icons.add_alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3),
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
          icon:Icon(Icons.add_alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3),
          );
       }
       else{
      verdura.value--;
       }
   }

}