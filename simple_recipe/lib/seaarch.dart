import 'package:flutter/material.dart';
import 'package:simple_recipe/modelRecipe.dart';
import 'package:simple_recipe/detailRecipe.dart';
import 'package:simple_recipe/RecipeList.dart';

class searchpage extends StatefulWidget {
  const searchpage({Key? key}) : super(key: key);

  @override
  State<searchpage> createState() => _seachpageState();
}

class _seachpageState extends State<searchpage> {
  List<Recipe> display_list = List.from(recipeList);
  void updateList(String value) {
    //function filter list
    setState(() {
      display_list = recipeList
          .where((element) =>
          element.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1A661),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Search for a Recipe",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 48.0)),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RecipeList(),
                        ),
                      );
                    },
                    icon: Icon(
                        color:Colors.white,
                        Icons.cancel_outlined),
                )
              ],
            ),
            SizedBox(
              height: 10.00,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.orange),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFFD8A9),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none),
                  hintText: ("Batagor"),
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color(0xffFDEEDC)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: display_list.length,
                    itemBuilder: (context, index) {
                      Recipe recipe = recipeList[index];

                      return Card(
                          child: ListTile(
                            title: Text(recipe.title),
                            subtitle: Text(recipe.rating),
                            leading: CircleAvatar(
                              backgroundImage: AssetImage("lib/img/dinner.png"),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => detailRecipe(recipe)));
                            },
                          ));
                    }))
          ],
        ),
      ),
    );
  }
}
