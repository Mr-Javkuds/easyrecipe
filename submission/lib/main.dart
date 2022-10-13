import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submission/detail_recipe.dart';
import 'package:submission/model/recipe.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Masakan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  int gridCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBBDEFB),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          List<String> poster = [];
          if (constraints.maxWidth <= 600) {
            gridCount = 1;
          } else if (constraints.maxWidth <= 1200) {
            gridCount = 2;
          } else {
            gridCount = 3;
          }

          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Temukan resep makanan kesukaanmu",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 23.0),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Recipes(gridCount)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Recipes extends StatelessWidget {
  final int gridCount;
  Recipes(this.gridCount);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: gridCount,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: (3 / 2),
      children: listRecipes.map((recipe) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetaiRecipe(recipe: recipe,);
            }));
          },
          child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      "images/" + recipe.thumb,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        color: Color(0x99000000),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(recipe.title,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        );
      }).toList(),
    );
  }
}
