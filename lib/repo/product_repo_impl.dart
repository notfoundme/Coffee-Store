import 'package:coffee_ecommerce/api/products_api.dart';
import 'package:coffee_ecommerce/api/products_api_impl.dart';
import 'package:coffee_ecommerce/modal/products_modal.dart';
import 'package:coffee_ecommerce/repo/product_repo.dart';

class ProductRepoImpl implements ProductRepo {
  ProductApi productApi = ProductsApiImpl();
  @override
  Future<List<ProductModel>> getAllProducts() async {
    return await productApi.getAllProducts();
  }
}
