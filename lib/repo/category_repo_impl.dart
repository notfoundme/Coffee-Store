import 'package:coffee_ecommerce/api/category_api.dart';
import 'package:coffee_ecommerce/api/category_api_impl.dart';
import 'package:coffee_ecommerce/modal/category_model.dart';
import 'package:coffee_ecommerce/repo/category_repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  CategoryApi categoryApi = CategoryApiImpl();

  @override
  Future<List<CategoryModel>> getAllCategories() async {
    return await categoryApi.getAllCategories();
  }
}
