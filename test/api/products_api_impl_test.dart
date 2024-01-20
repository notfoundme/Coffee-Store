import 'package:coffee_ecommerce/api/products_api.dart';
import 'package:coffee_ecommerce/api/products_api_impl.dart';
import 'package:coffee_ecommerce/modal/products_modal.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("All test of Product API implementation", () {
    test('products api impl Should have Cappucino as first item Title.',
        () async {
      ProductApi productApi = ProductsApiImpl();
      List<ProductModel> result = await productApi.getAllProducts();
      expect(result[0].title, "Cappucino");
    });

    test('products api impl should have a Data length of 9.', () async {
      ProductApi productApi = ProductsApiImpl();
      List<ProductModel> result = await productApi.getAllProducts();
      expect(result.length, 9);
    });
  });
}
