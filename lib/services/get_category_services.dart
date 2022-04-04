import 'dart:convert';

import 'package:bloc_volunteer_service/model/category_model.dart';

import 'package:http/http.dart' as http;

class GetCategoriesService {
  static Future<GetCategoryModel> getCategoriesSerice() async {
    var response = await http.get(Uri.parse(
        "https://volunteer.cyberfort.co.in/api/getCategories?dashboard=1"));

    var data = jsonDecode(response.body);
    return GetCategoryModel.fromJson(data);
  }
}
