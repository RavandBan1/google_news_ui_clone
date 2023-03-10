import 'package:flutter/material.dart';

//Root of our creen
class Foryou extends StatelessWidget {
  const Foryou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: NestedScrollView(
        //A scrolling view inside of which can be nested other scrolling
        //views, with their scroll positions being intrinsically linked.
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          //Call appBar widget
          const appBar()
        ],
        body: Container(),
        //body implementation later
      ),
    );
  }
}

//Scrollable AppBar
class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      snap: true,
      floating: true,
      backgroundColor: Colors.transparent,
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
