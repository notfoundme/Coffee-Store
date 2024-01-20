import 'dart:convert';

import 'package:coffee_ecommerce/api/products_api.dart';
import 'package:coffee_ecommerce/constants/api_endpoints.dart';
import 'package:coffee_ecommerce/modal/products_modal.dart';
import 'package:http/http.dart' as http;

class ProductsApiImpl implements ProductApi {
  @override
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response = await http.get(
      Uri.parse( productsEndpoint),
    );
List<Map<String, dynamic>> list =
        List<Map<String, dynamic>>.from(json.decode(response.body)["items"]);
    return list.map((item) {
      return ProductModel.fromJson(item);
    }).toList();
  }
}
