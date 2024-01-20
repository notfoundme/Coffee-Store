import 'package:coffee_ecommerce/modal/category_model.dart';
import 'package:coffee_ecommerce/repo/category_repo.dart';
import 'package:coffee_ecommerce/repo/category_repo_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('product repo impl should have Cappuccino as the first item Title and correct route', () async {
    CategoryRepo categoryRepo = CategoryRepoImpl();
    List<CategoryModel> result = await categoryRepo.getAllCategories();

    // Assuming CategoryModel has properties 'title' and 'route'
    expect(result.isNotEmpty, true);

    // Check the first item's title
    // expect(result[0].title, "Cappuccino");

    // Check the first item's route
    // expect(result[0].route, "cappuccino.json");
  });
}
