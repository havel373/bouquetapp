import 'package:flutter/material.dart';

import 'dummydata/bouquet_data.dart';
import 'models/Bouquet.dart';

class BouquetPurchaseScreen extends StatefulWidget {
  static const routeName = '/bouquet-purchase';

  @override
  _BouquetPurchaseScreenState createState() =>
      _BouquetPurchaseScreenState();
}

class _BouquetPurchaseScreenState
    extends State<BouquetPurchaseScreen> {
  final _formKey = GlobalKey<FormState>();
  int _quantity = 1;
  Bouquet _bouquet = Bouquet( name: '', description: '', price: 0, image: '');

  @override
  Widget build(BuildContext context) {
    final int index =
    ModalRoute.of(context)!.settings.arguments as int;
    final Bouquet bouquet = bouquetData[index];

    _bouquet = bouquet;

    return Scaffold(
      appBar: AppBar(
        title: Text('Purchase'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bouquet.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Image.asset(
                bouquet.image,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                '\$${bouquet.price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Quantity',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (_quantity > 1) _quantity--;
                      });
                    },
                    icon: Icon(Icons.remove),
                  ),
                  SizedBox(width: 8),
                  Text(
                    _quantity.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _quantity++;
                      });
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Total Price: \$${(bouquet.price * _quantity).toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Purchased ${_quantity} ${_bouquet.name}',
                        ),
                      ),
                    );
                  }
                },
                child: Text('Purchase'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}