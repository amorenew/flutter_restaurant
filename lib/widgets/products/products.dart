import 'package:flutter/material.dart';
import 'package:flutter_course/widgets/products/product_card.dart';

// import './pages/product.dart';
// import './price_tag.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  Products(this.products);

  Widget _buildProductList() {
    Widget productCard = Center(
      child: Text("3 Products there"),
    );
    if (products.length != 3) {
      productCard = ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            ProductCard(products[index], index),
        itemCount: products.length,
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
