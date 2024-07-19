import 'dart:convert';
import "package:http/http.dart" as http;

String baseUrl = "http://localhost:3000";

class Hobbies {
  static Future<List> getAllHobbies() async {
    try {
      var response = await http.get(Uri.parse("$baseUrl/api/loisirs"));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error("Erreur serveur");
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<String> addHobbie(data) async {
    try {
      var response =
          await http.post(Uri.parse("$baseUrl/api/loisirs/add"), body: data);
      if (response.statusCode == 200) {
        return "success";
      } else {
        return Future.error("Erreur serveur");
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<String> searchHobby(data) async {
    try {
      var response =
          await http.get(Uri.parse("$baseUrl/api/loisirs/name/$data"));
      if (response.statusCode == 200) {
        return "success";
      } else {
        return Future.error("Erreur serveur");
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}

// class Categories {
//   static Future<String> getAllCategories() async {
//     try {
//       var response = await http.get(Uri.parse("$baseUrl/api/category"));
//       if (response.statusCode == 200) {
//         final List<dynamic> data = json.decode(response.body);

//         return Futuredata.map((category) => category['name'] as String)
//             .toList();
//       } else {
//         return Future.error("Erreur serveur. Récupération des catégories.");
//       }
//     } catch (e) {
//       return Future.error(e.toString());
//     }
//   }
// }
