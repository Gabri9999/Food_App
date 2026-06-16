import 'package:flutter/material.dart';
import 'package:food_project/cart_screen.dart';
import 'package:food_project/constants.dart';



class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);   //Navigator.pop(context);
                  }, //backwward
                  child: InkWell(
  child: const Icon(Icons.arrow_left),
  onTap: (){
      //action code when clicked
      print("The icon is clicked");
      Navigator.of(context).popUntil((route) => route.isFirst); //Navigator.pop(context); 
  },
),
                ),
                InkWell(
  child: const Icon(Icons.menu),
  onTap: (){
      print("The icon is clicked");
      //action code when clicked
      //print("The icon is clicked");
  },
),
                
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.all(6),
              height: 305,
              width: 305,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/carne.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Carne\n",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      TextSpan(
                        text: "È costituita da: masse muscolari,tessuto adiposo (grasso),un certo quantitativo di grasso",
                        style: TextStyle(
                          color: kTextColor.withValues(alpha: .5),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "\$5",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: kPrimaryColor),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "La carne è alimento plastico ricco di aminoacidi essenziali e povero di vitamine che, consumato con moderazione e di buona qualità, può presentare alcuni effetti benefici.",
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withValues(alpha: .19),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Add to bag",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(width: 30),
                        InkWell(
              child: const Icon(Icons.arrow_right),
              onTap: (){
                     //action code when clicked
                 print("The icon is clicked");
                      },
                    ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withValues(alpha: .26),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(15),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                         //aggiungere la roba che ho scritto su word
                      
                      child : GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return  CartScreen();
                      }
                      ),
                    );
                  },
                child: InkWell(
  child: const Icon(Icons.badge),
  onTap: (){
      //action code when clicked
      //print("The icon is clicked");
      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return  CartScreen();
                      }
                      ),
                    );
  },
),
                ),
                        

                        ),
                        Positioned(
                          right: 15,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 28,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
                            ),
                            child: Text(
                              "0",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(color: kPrimaryColor, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
