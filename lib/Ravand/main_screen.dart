import 'package:flutter/material.dart';
import 'package:google_news_ui_clone/Ravand/cards.dart';
import 'package:google_news_ui_clone/Ravand/services/model/weather.dart';
import 'package:google_news_ui_clone/Ravand/services/weather_services.dart';
import 'package:google_news_ui_clone/bottomNav.dart';

class Foryou extends StatefulWidget {
  const Foryou({super.key});

  @override
  State<Foryou> createState() => _ForyouState();
}

class _ForyouState extends State<Foryou> {
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

class topSec extends StatefulWidget {
  const topSec({super.key});

  @override
  State<topSec> createState() => _topSecState();
}

class _topSecState extends State<topSec> {
  //an object of the data model and the API request function
  weatherService weatherservice = weatherService();
  Weather weather = Weather();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWeather();
    //call this function when our widget is first created reduces time to display fast
  }

  //stores data from weather API
  String icon = "";
  String location = "";
  double tempC = 0;

  void getWeather() async {
    weather = await weatherservice.getWeatherData("Duhok");
    //sets the data received from Weather API
    setState(() {
      tempC = weather.temp_c;
      icon = weather.condition;
      location = weather.location;
    });
  }

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
                    return SizedBox(
                      height: 240,
                      child: Stack(
                        children: [
                          //tempreture
                          Positioned(
                            left: 20,
                            top: 20,
                            child: Text(
                              tempC.round().toString(),
                              style: const TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 20,
                            left: 58,
                            child: Text(
                              "\u00b0C",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          //location
                          Positioned(
                            left: 25,
                            top: 55,
                            child: Text(location.toString()),
                          ),
                          //icon
                          Positioned(
                            right: 20,
                            top: 15,
                            child: Image.network('http:$icon'),
                          ),
                          //first item
                          const Positioned(
                            left: 58,
                            top: 115,
                            child: Text(
                              'Mon',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Positioned(
                            left: 40,
                            top: 120,
                            child: Image.network('http:$icon'),
                          ),
                          Positioned(
                            left: 58,
                            top: 175,
                            child: Text("${tempC.round()}\u00b0C"),
                          ),
                          //second
                          const Positioned(
                            left: 122,
                            top: 115,
                            child: Text(
                              'TUE',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Positioned(
                            left: 105,
                            top: 120,
                            child: Image.network('http:$icon'),
                          ),
                          Positioned(
                            left: 122,
                            top: 175,
                            child: Text("${tempC.round()}\u00b0C"),
                          ),
                          //third
                          const Positioned(
                            left: 188,
                            top: 115,
                            child: Text(
                              'WED',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Positioned(
                            left: 170,
                            top: 120,
                            child: Image.network('http:$icon'),
                          ),
                          Positioned(
                            left: 188,
                            top: 175,
                            child: Text("${tempC.round()}\u00b0C"),
                          ),
                          //fourth
                          const Positioned(
                            left: 252,
                            top: 115,
                            child: Text(
                              'THU',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Positioned(
                            left: 235,
                            top: 120,
                            child: Image.network('http:$icon'),
                          ),
                          Positioned(
                            left: 252,
                            top: 175,
                            child: Text("${tempC.round()}\u00b0C"),
                          ),
                          //five
                          const Positioned(
                            left: 320,
                            top: 115,
                            child: Text(
                              'FRI',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Positioned(
                            left: 300,
                            top: 120,
                            child: Image.network('http:$icon'),
                          ),
                          Positioned(
                            left: 320,
                            top: 175,
                            child: Text("${tempC.round()}\u00b0C"),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'More on weather.com',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
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
                    children: [
                      const SizedBox(width: 10),
                      Text(
                        "${tempC.round()}\u00b0C",
                        style: const TextStyle(fontSize: 18),
                      ),
                      Image.network(
                        'http:$icon',
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //top stories text
          const Positioned(
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
          //rounded blue button
          Positioned(
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
