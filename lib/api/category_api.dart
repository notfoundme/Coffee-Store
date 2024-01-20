import 'package:coffee_ecommerce/modal/category_model.dart';

abstract class CategoryApi {
  Future<List<CategoryModel>> getAllCategories();
}
