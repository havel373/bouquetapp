import 'package:flutter/material.dart';

import 'dummydata/bouquet_data.dart';
import 'models/Bouquet.dart';

class BouquetDetailScreen extends StatelessWidget {
  static const routeName = '/bouquet-detail';

  @override
  Widget build(BuildContext context) {
    final int index =
    ModalRoute.of(context)!.settings.arguments as int;
    final Bouquet bouquet = bouquetData[index];


    return Scaffold(
      appBar: AppBar(
        title: Text(bouquet.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      Expanded(
      child: Image.asset(
      bouquet.image,
        fit: BoxFit.cover,
      ),
    )
    ]
    ),
    );
  }
}




