// import 'package:flutter/material.dart';

// import './products.dart';
// // import './product_control.dart';

// class ProductManager extends StatelessWidget {
//   final List<Map<String, dynamic>> products;


//   ProductManager(this.products);
// //   final Map<String, String> startingProduct;

// //   ProductManager(
// //       {this.startingProduct = const {
// //         'title': 'Cake',
// //         'image': 'assets/images/food.jpg'
// //       }});

// //   @override
// //   State<StatefulWidget> createState() {
// //     return _ProductManagerState();
// //   }
// // }

// // class _ProductManagerState extends State<ProductManager> {
//   // final List<Map<String, String>> _products = [];

//   // @override
//   // void initState() {
//   // if (_products != null && _products.isNotEmpty) {
//   // _products.add(widget.startingProduct);
//   // }
//   // super.initState();
//   // }

//   // void _addProduct(Map product) {
//   //   setState(() {
//   //     _products.add(product);
//   //   });
//   // }

//   // void _deleteProduct(int index) {
//   //   setState(() {
//   //     _products.removeAt(index);
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       // Container(
//       //     margin: EdgeInsets.all(10.0),
//       //     child: ProductControl(
//       //       addProduct: addProduct,
//       //     )),
//       // Expanded(child: Products(products, deleteProduct: deleteProduct))
//       Expanded(child: Products(products))
//     ]);
//   }
// }
