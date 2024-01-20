import 'package:coffee_ecommerce/modal/products_modal.dart';
import 'package:coffee_ecommerce/repo/product_repo.dart';
import 'package:coffee_ecommerce/repo/product_repo_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('product repo impl should have Cappucino as first item Title', () async {
    ProductRepo productRepo = ProductRepoImpl();
    List<ProductModel> result = await productRepo.getAllProducts();
    expect(result[0].title, "Cappucino");
  });
}


