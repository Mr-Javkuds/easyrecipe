import 'package:flutter/material.dart';
import 'package:flutter_application_6/listAllFootball.dart';
import 'package:flutter_application_6/fav.dart';
import 'package:google_fonts/google_fonts.dart';

class TabbarExample extends StatefulWidget {
  const TabbarExample({Key? key}) : super(key: key);

  @override
  State<TabbarExample> createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample> with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(icon: Icon(Icons.sports_soccer_rounded, color: Colors.white,)),
    Tab(icon: Icon(Icons.favorite_rounded, color: Colors.red,)),
    Tab(icon: Icon(Icons.not_interested, color: Colors.white,)),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 70, 206),
          shadowColor: Colors.transparent,
          bottom: TabBar(
            padding: EdgeInsets.only(left: 20, right: 20),
            indicatorColor: Colors.transparent,

            labelColor: Colors.blue,
            onTap: (index) {
              // Should not used it as it only called when tab options are clicked,
              // not when user swapped
            },
            controller: _controller,
            tabs: list,
          ),

          title: Row(
            children: [
              Image.asset("Image/Logo/premierwhite.png",
                height:65,width: 65,),
              Padding(padding: EdgeInsets.only(left: 30)),
              Text(
                'Premier League',
              ),
            ],
          ),

          elevation: 0,
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            ListAllFootbal(),
            favPage(),
            Center(
                child: Text(
                  "Nothing 404",
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
