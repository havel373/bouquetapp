import 'package:flutter/material.dart';
import 'bouquet_detail_screen.dart';
import 'bouquet_purchase_screen.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    BouquetDetailScreen.routeName: (BuildContext context) =>
        BouquetDetailScreen(),
    BouquetPurchaseScreen.routeName: (BuildContext context) =>
        BouquetPurchaseScreen(),
  };
}