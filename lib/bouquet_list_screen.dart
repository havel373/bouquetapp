import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'bouquet_detail_screen.dart';
import 'dummydata/bouquet_data.dart';
import 'models/Bouquet.dart';

class BouquetListScreen extends StatelessWidget {
  static const routeName = '/bouquet-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Flower Bouquets'),
    ),
    body: StaggeredGridView.countBuilder(
    crossAxisCount: 2,
    itemCount: bouquetData.length,
    itemBuilder: (BuildContext  context, int index) {
      Bouquet bouquet = bouquetData[index];
      return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            BouquetDetailScreen.routeName,
            arguments: index,
          );
        },
        child: Card(
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.asset(
                  bouquet.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bouquet.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      bouquet.description,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '\$${bouquet.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
      staggeredTileBuilder: (int index) =>
          StaggeredTile.fit(1),
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
    ),
    );
  }
}