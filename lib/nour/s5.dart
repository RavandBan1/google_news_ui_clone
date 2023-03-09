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




///////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////Entertainment Section ///////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////

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
          ///////////////////////////////////////////////////////////
       
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(5),

            ),

          ),

          ///////////////////////////////////////////////////////////
          ///////////// More Entertainment TextButton ///////////////
          ///////////////////////////////////////////////////////////
          Container(
            child:Center(
              child: TextButton(onPressed: (){},
               child: Text("More Entertainment"),
               ),
               ),

          ),
          
        ],
      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////Food And Drink section///////////////////////////////////////////
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
          ///////////////////////////////////////////////////////////
       
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(5),
              
            ),

          ),

          ///////////////////////////////////////////////////////////
          /////////////// More Food And Drink TextButton ////////////
          ///////////////////////////////////////////////////////////
          Container(
            child:Center(
              child: TextButton(onPressed: (){},
               child: Text("More Food And Drink"),
               ),
               ),

          ),

        ]
        ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////Health And Fitness section////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////

class HealthAndFitness extends StatelessWidget {
  const HealthAndFitness({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

      child: Column(

        children: [
          Text("Health And Fitness",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),
          ///////////////////////////////////////////////////////////
       
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(5),
              
            ),

          ),

          ///////////////////////////////////////////////////////////
          ///////////// More Health And Fitness TextButton //////////
          ///////////////////////////////////////////////////////////
          Container(
            child:Center(
              child: TextButton(onPressed: (){},
               child: Text("More Health And Fitness"),
               ),
               ),

          ),

        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////// Home And Garden Section ////////////////////////////////////////
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

          ///////////////////////////////////////////////////////////
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(5),
              
            ),

          ),

          ///////////////////////////////////////////////////////////
          //////////// More Home And Garden TextButton //////////////
          ///////////////////////////////////////////////////////////
          Container(
            child:Center(
              child: TextButton(onPressed: (){},
               child: Text("More Home And Garden"),
               ),
               ),

          ),
        ],

      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////// News And Politics Section ///////////////////////////////////////
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
          ///////////////////////////////////////////////////////////
       
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(5),
              
            ),

          ),

          ///////////////////////////////////////////////////////////
          //////////// More News And Politics TextButton ////////////
          ///////////////////////////////////////////////////////////
          Container(
            child:Center(
              child: TextButton(onPressed: (){},
               child: Text("More News And Politics"),
               ),
               ),

          ),
        ],

      ),
  


    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////// Science And Technology Section //////////////////////////////////////
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
          ///////////////////////////////////////////////////////////
       
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(5),
              
            ),

          ),

          ///////////////////////////////////////////////////////////
          ///////// More Science And Technology TextButton //////////
          ///////////////////////////////////////////////////////////
          Container(
            child:Center(
              child: TextButton(onPressed: (){},
               child: Text("More Science And Technology"),
               ),
               ),

          ),
        ],

      ),
  
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////// Special Interest Section ////////////////////////////////////////
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
          ///////////////////////////////////////////////////////////
       
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(5),
              
            ),

          ),

          ///////////////////////////////////////////////////////////
          /////////// More Special Interest TextButton //////////////
          ///////////////////////////////////////////////////////////
          Container(
            child:Center(
              child: TextButton(onPressed: (){},
               child: Text("More Special Interest"),
               ),
               ),

          ),
        ],

      ),

      
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////// Sports Section///////////////////////////////////////////////
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
          ///////////////////////////////////////////////////////////
       
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(5),
              
            ),

          ),

          ///////////////////////////////////////////////////////////
          ///////////////// More Sports TextButton //////////////////
          ///////////////////////////////////////////////////////////
          Container(
            child:Center(
              child: TextButton(onPressed: (){},
               child: Text("More Sports"),
               ),
               ),

          ),


        ],

      ),
    );
  }
}