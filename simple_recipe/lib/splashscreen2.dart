import 'package:flutter/material.dart';
import 'dart:async';
import 'package:simple_recipe/RecipeList.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const RecipeList()),
      );
    });
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // logo disini
              Center(
                  child: Hero(
                      tag: "appIcon", child: Image.asset("lib/img/food.png"))),

              SizedBox(
                height: 24.0,
              ),
              Text(
                "Simple Recipe ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
