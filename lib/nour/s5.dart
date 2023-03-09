import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsstandPage extends StatelessWidget {
  const NewsstandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),

      children: [

        Center(
          child: Text("Suggested Sources",
          style: TextStyle(color: Colors.grey),),
        ),

        Entertainment(),
        Divider(),

        FoodAndDrink(),
        Divider(),

        HealthAndFitness(),
        Divider(),

        HomeAndGarden(),
        Divider(),

        NewsAndPolitics(),
        Divider(),

        ScienceAndTechnology(),
        Divider(),

        SpecialInterest(),
        Divider(),

        Sports()
      ],
    

    );
  }
}






class Entertainment extends StatelessWidget {
  const Entertainment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

      child: Column(
        children: [
          Text("Entertainment",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),
          
        ],
      ),
    );
  }
}
/////////////////////////////////////////////////////////////////////////////////////////////////////// 



class FoodAndDrink extends StatelessWidget {
  const FoodAndDrink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10 , vertical:20 ),

      child: Column(
        children: [
          Text("Food And Drink",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),

        ]
        ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////



class HealthAndFitness extends StatelessWidget {
  const HealthAndFitness({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

      child: Column(

        children: [
          Text("Health And Drink",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),

        ],
      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////



class HomeAndGarden extends StatelessWidget {
  const HomeAndGarden({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

      child: Column(
        children: [
          Text("Home And Garden",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),
        ],

      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////



class NewsAndPolitics extends StatelessWidget {
  const NewsAndPolitics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

      child: Column(
        children: [
          Text("News And Politics",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),
        ],

      ),
  


    );
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////




class ScienceAndTechnology extends StatelessWidget {
  const ScienceAndTechnology({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),

      
      child: Column(
        children: [
          Text("Science And Technology",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),
        ],

      ),
  
    );
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////




class SpecialInterest extends StatelessWidget {
  const SpecialInterest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

       child: Column(
        children: [
          Text("Special Interest",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),
        ],

      ),

      
    );
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////




class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

       child: Column(
        children: [
          Text("Sports",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),


        ],

      ),
    );
  }
}