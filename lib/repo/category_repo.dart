import 'package:coffee_ecommerce/modal/category_model.dart';

abstract class CategoryRepo {
  Future<List<CategoryModel>> getAllCategories();
}
