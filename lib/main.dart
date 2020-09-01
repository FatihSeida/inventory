import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './pages/product_page.dart';
import './providers/products.dart';
import './pages/master_product_page.dart';
import './pages/add_new_product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
      ],
      child: MaterialApp(
        title: 'Fatih Seida',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.pink,
          accentColor: Colors.yellow,
        ),
        routes: {
          '/': (ctx) => ProductPage(),
          '/manage-product': (ctx) => MasterProductPage(),
          '/add-product': (ctx) => AddNewProduct(),
        },
      ),
    );
  }
}
