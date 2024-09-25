import 'package:e_commerce_with_provider/screens/Cart/cart_screen.dart';
import 'package:e_commerce_with_provider/screens/Home/HomeScreen.dart';
import 'package:e_commerce_with_provider/screens/constans.dart';
import 'package:e_commerce_with_provider/screens/Favorite/favorite.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int cuttentIndex = 2;
  List screensList = const [
    Scaffold(),
    Favorite(),
    HomeScreen(),
    CartScreen(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cuttentIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: kprimaryColor,
        child: Icon(
          Icons.home,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    cuttentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.grid_view_outlined,
                  size: 30,
                  color:
                      cuttentIndex == 0 ? kprimaryColor : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    cuttentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color:
                      cuttentIndex == 1 ? kprimaryColor : Colors.grey.shade400,
                )),
            SizedBox(
              width: 15,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    cuttentIndex = 3;
                  });
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color:
                      cuttentIndex == 3 ? kprimaryColor : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    cuttentIndex = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color:
                      cuttentIndex == 4 ? kprimaryColor : Colors.grey.shade400,
                )),
          ],
        ),
      ),
      body: screensList[cuttentIndex],
    );
  }
}
