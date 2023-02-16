import 'package:flutter/material.dart';

class Foryou extends StatelessWidget {
  const Foryou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
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
      ),
      //body implementation later
    );
  }
}
