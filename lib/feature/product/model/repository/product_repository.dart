import 'dart:convert';

import '../../../../core/network/api_endpoint.dart';
import '../../../../core/network/network_services.dart';
import '../product/product_model.dart';

abstract class ProductRepository {
  Future<ProductModel> getProduct();
}

class ProductRepositoryImpl extends ProductRepository {
  @override
  Future<ProductModel> getProduct() async {
    var response = await NetworkServices().get(endpoint: ApiEndpoint.products);
    return ProductModel.fromJson(jsonDecode(response.body));
  }
}
