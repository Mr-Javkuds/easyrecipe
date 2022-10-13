import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:simple_recipe/api/recipe.dart';
class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {

    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "e3e73ed9a1msh25a40ea4d57c2a8p191577jsn0ee7ea4bd91c",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}