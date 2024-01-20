import 'package:coffee_ecommerce/modal/products_modal.dart';

abstract class ProductRepo {
  Future<List<ProductModel>> getAllProducts();
}
