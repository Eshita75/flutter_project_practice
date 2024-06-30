import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class GroceriesScreen extends StatefulWidget {
  const GroceriesScreen({super.key});

  @override
  State<GroceriesScreen> createState() => _GroceriesScreenState();
}

class _GroceriesScreenState extends State<GroceriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00A368),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20, left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu, color: Colors.white, size: 30,),

                    GestureDetector(
                      onTap: (){

                      },
                      child: badges.Badge(
                        position: badges.BadgePosition.topEnd(),
                        badgeStyle: const badges.BadgeStyle(
                          badgeColor: Colors.black,
                          shape: badges.BadgeShape.instagram
                        ),
                        child: const Icon(
                              CupertinoIcons.cart,
                              size: 30,
                              color: Colors.white,
                         ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
