import 'package:flutter/material.dart';
import 'package:google_news_ui_clone/Ravand/cards.dart';
import 'package:google_news_ui_clone/bottomNav.dart';

class Foryou extends StatelessWidget {
  const Foryou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: NestedScrollView(
        //multiple scrolls on the screen header & body
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
            [const appBar()], //call appBar widget
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              topSec(),
              SizedBox(height: 25),
              top3Cards(),
              Divider(
                height: 15,
                thickness: 10,
              ),
              PicksForYou(),
              SizedBox(height: 15),
              more()
            ],
          ),
        ),
      ),
    );
  }
}

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      //for a scrollable appBar
      snap: true,
      floating: true,
      backgroundColor: Colors.grey[900],
      title: const Text("Google News"),
      centerTitle: true,
      elevation: 0.0,
      leading: IconButton(
        //for the Search icon button on top left of the screen
        icon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        tooltip: 'Search',
        onPressed: () {}, //implementation later (TO DO)!!
      ),
      actions: <Widget>[
        //for the top right gmail icon
        IconButton(
          icon: const Icon(Icons.email_outlined),
          tooltip: 'Gmail',
          onPressed: () {}, //implementation later (TO DO)!!
        ),
      ],
    );
  }
}

class topSec extends StatelessWidget {
  const topSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      height: 125,
      child: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 10,
            child: Text(
              "Your briefing",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            left: 10,
            top: 46,
            child: Text(
              "Thursday, February 2", //implementation might change in the future if API is implemented
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: GestureDetector(
              //Displays a container Like a button when tapped into it it opens a
              //Buttom Sheet that display Weather Infos
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return const SizedBox(
                      height: 240,
                      //child: property implementation later (TO DO)!!
                    );
                  },
                );
              },
              child: Container(
                //The container that displays as a rounded button
                height: 50,
                width: 110,
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Row(
                    //For the info on top of that button
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "39\u00b0F",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.cloud),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            //top stories text
            left: 10,
            top: 90,
            child: Text(
              'Top stories',
              style: TextStyle(
                color: Color.fromARGB(255, 81, 159, 223),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            //rounded blue button
            right: 10,
            top: 94,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const bottomNav()),
                );
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 81, 159, 223),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class top3Cards extends StatelessWidget {
  const top3Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          //first item
          bigCard(),
          //second item
          smallStartCard(),
          //third
          smallEndCard(),
        ],
      ),
    );
  }
}

class PicksForYou extends StatelessWidget {
  const PicksForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            child: Text(
              'Picks for you',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 123, 70, 221),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: Divider(
              height: 15,
              thickness: 1,
            ),
          ),
          smallStartCard(),
          Card(
            //for rounded bottom
            elevation: 25,
            color: Colors.grey[900],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
            ),
            child: smallEndCard(),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class more extends StatelessWidget {
  const more({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          bigCard(),
          const SizedBox(height: 10),
          bigCard(),
          const SizedBox(height: 10),
          bigCard()
        ],
      ),
    );
  }
}
