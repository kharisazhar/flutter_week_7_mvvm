import 'package:flutter/material.dart';
import 'package:flutter_week7_mvvm/feature/product/model/repository/product_repository.dart';
import 'package:flutter_week7_mvvm/feature/product/view/product_page.dart';
import 'package:flutter_week7_mvvm/feature/product/view_model/product_viewmodel.dart';
import 'package:provider/provider.dart';

class ProductMain extends StatelessWidget {
  const ProductMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductViewModel(
        productRepository: ProductRepositoryImpl(),
      )..getProduct(),
      child: const ProductPage(),
    );
  }
}
