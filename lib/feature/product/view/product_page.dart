import 'package:flutter/material.dart';
import 'package:flutter_week7_mvvm/feature/product/view_model/product_viewmodel.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productViewModel = Provider.of<ProductViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter MVVM Product"),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: productViewModel.productModel?.products?.length ?? 0,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                  '${(productViewModel.productModel?.products ?? [])[index].title}'),
              subtitle: Text(
                  ' \$ ${(productViewModel.productModel?.products ?? [])[index].price} '),
            );
          }),
    );
  }
}
