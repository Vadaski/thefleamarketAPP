import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:fleamarket/model/data.dart';
import 'package:fleamarket/model/product.dart';

class ShowSearchResultScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      appBar: new AppBar(
        title: Text('ShowSearchResultScreen'),
        backgroundColor: Colors.orangeAccent,
      ),
       body: GridView.count(
         crossAxisCount: 2,
         padding: EdgeInsets.all(16.0),
         childAspectRatio: 8.0 / 9.0,
         children:_buildGridCards(context),
     ),
     );
  }


  List<Card> _buildGridCards(BuildContext context) {
    List<Product> products = getProducts(Category.all);

    if (products == null || products.isEmpty) {
      return const <Card>[];
    }

    final ThemeData theme = Theme.of(context);
    final NumberFormat formatter = NumberFormat.simpleCurrency(
        locale: Localizations.localeOf(context).toString());

    return products.map((product) {
      return Card(
        //TODO: Adjust card heights (103)
        child: Column(
          //TODO: Center items on the card (103)
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18 / 11,
              child: Image.asset(
                'images/goods03.jpg',
//                package: product.assetPackage,
                //TODO: Adjust the box size (102)
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  //TODO: Align labels to the bottom and center (103)
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //TODO: Handle overflowing labels (103)
                    Text(
                      product.name,
                      style: theme.textTheme.title,
                      maxLines: 1,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      formatter.format(product.price),
                      style: theme.textTheme.body2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }
}