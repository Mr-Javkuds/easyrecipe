import 'package:flutter/material.dart';
import 'model/recipe.dart';
import 'package:google_fonts/google_fonts.dart';

class DetaiRecipe extends StatefulWidget {
  final Recipe recipe;
  DetaiRecipe({required this.recipe});

  @override
  State<DetaiRecipe> createState() => _DetaiRecipeState(recipe: recipe);
}

class _DetaiRecipeState extends State<DetaiRecipe> {
  final Recipe recipe;
  _DetaiRecipeState({required this.recipe});

  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBBDEFB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Poster(recipe.thumb),
                SizedBox(
                  height: 10.0,
                ),
                Overview(recipe)
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        backgroundColor: Color(0xffB2DFDB),
        child: Icon(
          isFavorite ? Icons.favorite_rounded : Icons.favorite_border,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}

class Poster extends StatelessWidget {
  final String thumb;
  Poster(this.thumb);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            height: 400,
            child: Image.asset(
              "images/" + thumb,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class Overview extends StatelessWidget {
  final Recipe recipe;
  Overview(this.recipe);
  @override
  Widget build(BuildContext context) {
    return 
      Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Text(
          recipe.title,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20.0),
        ),
        Text(
          recipe.desc,
          style: GoogleFonts.poppins(color: Colors.black, fontSize: 13.0),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Bahan-bahan",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,color: Colors.black, fontSize: 13.0)),
        Text("- "+
          recipe.ingredient.join("\n- "),
          style: GoogleFonts.poppins( color: Colors.black, fontSize: 13.0),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Langkah-langkah memasak",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,color: Colors.black, fontSize: 13.0)),
        Text(recipe.step.join("\n\n"),
          style: GoogleFonts.poppins( color: Colors.black, fontSize: 13.0),
        )
      ],
    );
  }
}
