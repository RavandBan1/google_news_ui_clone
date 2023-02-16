import 'package:flutter/material.dart';
import 'package:google_news_ui_clone/bottomNav.dart';

void main() => runApp(MaterialApp(
      color: Colors.grey[900],
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const bottomNav(),
    ));
