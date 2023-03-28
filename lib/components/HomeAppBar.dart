
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> data;
  const HomeAppBar({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15), // before it as 25
      child: Row(children: [
        GestureDetector(
          onTap: () {
            data.currentState?.openDrawer();
            // AuthController.instance.logOut();
          },
          child: Icon(
            Icons.sort,
            size: 30,
            color: Color.fromARGB(255, 235, 122, 56), //0xFF4C53A2
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Del Bouquett',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 235, 122, 56), //0xFF4C53A2
            ),
          ),
        ),
        const Spacer(),
       badges.Badge(
          badgeContent: const Text(
            "3",
            style: TextStyle(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'Keranjang');
            },
            child: const Icon(
              Icons.shopping_bag_outlined,
              size: 35,
              color: Color.fromARGB(255, 235, 122, 56), //0xFF4C53A2
            ),
          )
        ),
      ]),
    );
  }
}
