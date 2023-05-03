import 'package:flutter/material.dart';
import 'package:playstor/androidstore/view/foryou_screen.dart';
import 'package:playstor/androidstore/view/top%20charts.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.black87,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 365,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.shade800),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                 Icon(Icons.menu,color: Colors.white),
                 Text("Search for app & games",style: TextStyle(color: Colors.grey,fontSize: 20)),
                 Icon(Icons.keyboard_voice_outlined,color: Colors.white),
                ]),
              ),
            )
          ],
          bottom: const TabBar(
            labelColor:Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: "For you"),
              Tab(text: "Top charts"),
              Tab(text: "Premium"),
            ],
          ),
        ) ,
        body: TabBarView(
          children: [
            ForYouScreen(),
            // Center(child: Text("hello")),
            // Center(child: Text("hii")),
            TopChartScreen(),
            Center(child: Text("h")),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black87,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.sports_esports_rounded,color: Colors.grey.shade500),label: "Gemes"),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_outlined,color: Colors.grey.shade500),label: "App"),
            BottomNavigationBarItem(icon: Icon(Icons.book_outlined,color: Colors.grey.shade500),label: "Books"),
          ],
        ),
      ),
    ));
  }
}
