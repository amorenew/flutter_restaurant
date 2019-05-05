import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addPoduct;

  ProductCreatePage(this.addPoduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePage();
  }
}

class _ProductCreatePage extends State<ProductCreatePage> {
  String _titleValue = '';
  String _descriptionValue = '';
  double _priceValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Product Title'),
              onChanged: (String value) {
                setState(() {
                  this._titleValue = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Description'),
              maxLines: 4,
              onChanged: (String value) {
                setState(() {
                  this._descriptionValue = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Price'),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  this._priceValue = double.parse(value);
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text('SAVE'),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: () {
                final Map<String, dynamic> product = {
                  'title': _titleValue,
                  'description': _descriptionValue,
                  'price': _priceValue,
                  'image': 'assets/images/food.jpg'
                };
                widget.addPoduct(product);
                Navigator.pushReplacementNamed(context, '/products');
              },
            )
          ],
        ));
    // return Center(
    //   child: RaisedButton(
    //     child: Text('Save'),
    //     onPressed: () {
    //       showModalBottomSheet(
    //           context: context,
    //           builder: (BuildContext context) {
    //             return Center(
    //               child: Text('this is a modal'),
    //             );
    //           });
    //     },
    //   ),
    // );
  }
}
