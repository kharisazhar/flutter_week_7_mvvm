import 'package:flutter/cupertino.dart';
import 'package:flutter_week7_mvvm/feature/product/model/product/product_model.dart';
import 'package:flutter_week7_mvvm/feature/product/model/repository/product_repository.dart';

class ProductViewModel with ChangeNotifier {
  ProductViewModel({required this.productRepository});

  final ProductRepository productRepository;

  ProductModel? _productModel;

  ProductModel? get productModel => _productModel;

  void getProduct() async {
    var data = await productRepository.getProduct();
    _productModel = data;
    notifyListeners();
  }
}
