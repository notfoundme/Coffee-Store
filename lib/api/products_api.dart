import 'package:coffee_ecommerce/modal/products_modal.dart';

abstract class ProductApi {
  Future<List<ProductModel>> getAllProducts();
}
