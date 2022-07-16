import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:food_project/constants.dart';
import 'package:food_project/details_screen.dart';
import 'package:food_project/details_screen1.dart';
import 'package:food_project/details_screen2.dart';
import 'package:food_project/screens/login_screen.dart';
import 'package:food_project/widget/category_title.dart';
import 'package:food_project/widget/food_card.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(home:MyApp()));
}
//void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPrimaryColor,                       
          ),
      home: HomeScreen(),   //HomeScreen(),
    );
  }
}

 
class HomeScreen extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
  
  
  String usermessage1 = '';
  final textcontroller1 = TextEditingController();
    
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Container(
        padding: EdgeInsets.all(10), 
        height: 80, 
        width: 80,  
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: InkWell(
          child: Icon(Icons.add),
        onTap: (){
      //action code when clicked
      print("The icon is clicked");
          },    
      ),
        ),
      ),
      body: SingleChildScrollView(
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          
       Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
          child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                  ),
                  // ignore: avoid_returning_null_for_void
                  onPressed: () =>Get.to(()=>LoginScreen()), child: Text("Login",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white
                  ),
                  ),
                  ),
                  ),
              ],
                ),
       ),

         


          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
            child: Icon(Icons.menu),
            onTap: (){
      //action code when clicked
      print("The icon is clicked");
           },    
        ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20), 
            child: Text(
              "Modo semplice per trovare \ndegli alimenti",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTitle(title: "All", active: true, key: UniqueKey()),
                CategoryTitle(title: "Italian", active: true, key: UniqueKey()),
                CategoryTitle(title: "Asian", active: true, key: UniqueKey()),
                CategoryTitle(title: "Chinese", active: true, key: UniqueKey()),
                CategoryTitle(title: "Burgers", active: true, key: UniqueKey()),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20), 
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), 
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), 
              border: Border.all(color: kBorderColor),
            ),
           
            child: TextField(
              controller: textcontroller1,
              decoration: InputDecoration(
                hintText: 'inserisci il nome del prodotto da cercare',
                //border: OutlineInputBorder()
                ),
            ),

          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }
                      ),
                    );
                  },
               child: FoodCard(
                    press: () {  //press : () {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }
                      ),
                    );
                    }); 
                  }, //}
                  key: UniqueKey(),
                  ingredient: "masse muscolari,tessuto adiposo (grasso),grasso",
                  title: "Carne",                 
                  image: "assets/images/carne.png",
                  price: 5,
                  calories: "143Kcal",
                  description:
                      "La carne è alimento plastico ricco di aminoacidi essenziali e povero di vitamine. ",
                ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen1();
                      }
                      ),
                    );
                  },
               child: FoodCard(
                press: () {  //press : () {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen1();
                      }
                      ),
                    );
                    }); 
                  },
                  key: UniqueKey(),
                  ingredient: "esocarpo, mesocarpo ed endocarpo",
                  title: "Frutta",
                  image: "assets/images/frutta.png",
                  price: 5,
                  calories: "50Kcal",
                  description:
                      "La frutta è un alimento ad alta densità nutritiva e a bassa densità calorica.   ",
                ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen2();
                      }
                      ),
                    );
                  }, 
                child: FoodCard(
                  press: () {  //press : () {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen2();
                      }
                      ),
                    );
                    }); 
                  },
                  key: UniqueKey(),
                  ingredient: "radici e gambo,foglie e germogli.",
                  title: "Verdura",
                  image: "assets/images/verdura.png",
                  price: 5,
                  calories: "65Kcal",
                  description:
                      "La verdura è una fonte di principi nutritivi e fibre naturali. ",
                ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    )
    );
  }
}



 

