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
//1
class Entertainment extends StatelessWidget {
  const Entertainment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

      child: Column(
        children: [

           ///////////////////////////////////////////////////////////
          /////////////////// Entertainments Label ///////////////////
          ///////////////////////////////////////////////////////////
          Text("Entertainment",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),

          ///////////////////////////////////////////////////////////
          /////////////////// Entertainments List ///////////////////
          ///////////////////////////////////////////////////////////
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container();
                
              }, 
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
////////////////////////////////////// Food And Drink section /////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
//2
class FoodAndDrink extends StatelessWidget {
  const FoodAndDrink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10 , vertical:20 ),

      child: Column(
        children: [
          
          ///////////////////////////////////////////////////////////
          //////////////// Food And Drink Label /////////////////////
          ///////////////////////////////////////////////////////////
          Text("Food And Drink",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),

          ///////////////////////////////////////////////////////////
          //////////////// Food And Drink List //////////////////////
          ///////////////////////////////////////////////////////////
          
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container();
                
              }, 
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
///////////////////////////////////// Health And Fitness section //////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
//3
class HealthAndFitness extends StatelessWidget {
  const HealthAndFitness({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

      child: Column(

        children: [

           ///////////////////////////////////////////////////////////
          /////////////// Health And Fitness Label ///////////////////
          ///////////////////////////////////////////////////////////
          Text("Health And Fitness",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),

          ///////////////////////////////////////////////////////////
          /////////////// Health And Fitness List ///////////////////
          ///////////////////////////////////////////////////////////
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container();
                
              }, 
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
//4
class HomeAndGarden extends StatelessWidget {
  const HomeAndGarden({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

      child: Column(
        children: [

          ///////////////////////////////////////////////////////////
          ///////////////// Home And Garden Label ///////////////////
          ///////////////////////////////////////////////////////////
          Text("Home And Garden",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),

          ///////////////////////////////////////////////////////////
          ///////////////// Home And Garden List ////////////////////
          ///////////////////////////////////////////////////////////
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container();
                
              }, 
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
//5
class NewsAndPolitics extends StatelessWidget {
  const NewsAndPolitics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

      child: Column(
        children: [
          ///////////////////////////////////////////////////////////
          //////////////// News And Politics Label //////////////////
          ///////////////////////////////////////////////////////////
          Text("News And Politics",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),

          ///////////////////////////////////////////////////////////
          //////////////// News And Politics List ///////////////////
          ///////////////////////////////////////////////////////////
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container();
                
              }, 
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
//6
class ScienceAndTechnology extends StatelessWidget {
  const ScienceAndTechnology({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),

      
      child: Column(
        children: [

           ///////////////////////////////////////////////////////////
          ////////////// Science And Technology Label ////////////////
          ///////////////////////////////////////////////////////////
          Text("Science And Technology",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),

          ///////////////////////////////////////////////////////////
          ////////////// Science And Technology List ////////////////
          ///////////////////////////////////////////////////////////
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container();
                
              }, 
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
//7
class SpecialInterest extends StatelessWidget {
  const SpecialInterest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

       child: Column(
        children: [

           ///////////////////////////////////////////////////////////
          ////////////////// Special Interest Label //////////////////
          ///////////////////////////////////////////////////////////
          Text("Special Interest",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),

          ///////////////////////////////////////////////////////////
          ////////////////// Special Interest List //////////////////
          ///////////////////////////////////////////////////////////
         Container(
          height: 150,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container();
                
              }, 
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
///////////////////////////////////////// Sports Section //////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
//8
class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

       child: Column(
        children: [

          ///////////////////////////////////////////////////////////
          //////////////////// Sports Label //////////////////////////
          ///////////////////////////////////////////////////////////
          Text("Sports",
          style: TextStyle( fontWeight: FontWeight.bold),
          ),

          ///////////////////////////////////////////////////////////
          //////////////////// Sports List //////////////////////////
          ///////////////////////////////////////////////////////////
       
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container();
                
              }, 
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