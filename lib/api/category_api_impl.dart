import 'dart:convert';

import 'package:coffee_ecommerce/constants/api_endpoints.dart';
import 'package:coffee_ecommerce/modal/category_model.dart';
import 'package:http/http.dart' as http;

import 'package:coffee_ecommerce/api/category_api.dart';

class CategoryApiImpl implements CategoryApi {
  @override
  Future<List<CategoryModel>> getAllCategories() async {
   http.Response response  = await http.get(Uri.parse(categoryEndpoint));
   
List<Map<String, dynamic>> list =
        List<Map<String, dynamic>>.from(json.decode(response.body)["items"]);
    return list.map((item) {
      return CategoryModel.fromJson(item);
    }).toList();
  }
  }
  

