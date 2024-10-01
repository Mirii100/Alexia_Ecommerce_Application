import 'package:alexia_exommerce_app/screens/Details/Favourite/favourite.dart';
import 'package:alexia_exommerce_app/screens/Cart/cart_screeen.dart';
import 'package:alexia_exommerce_app/screens/Home/home_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex=2;
  List screens=const [
    Scaffold(),
    Favourite(),
    HomeScreen(),
    CartScreen(),
    Scaffold()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Alexia Ecommerce ',

        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,

      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
        setState(() {
          currentIndex=2;});

      },
      shape:CircleBorder() ,
      backgroundColor: kprimaryColor,
      child: Icon(Icons.home,
      color: Colors.white,size: 35,
      ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,height: 60,color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize:MainAxisSize.max ,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              setState(() {
                currentIndex=1;
              });
            },
              icon: Icon(Icons.grid_view_outlined,
                size: 30,
                color:currentIndex ==0? kprimaryColor:Colors.grey.shade400,

            ),
            ),
            IconButton(onPressed: (){
              currentIndex=1;
            },
              icon: Icon(
                Icons.person,
                size: 30,
                color:currentIndex ==1? kprimaryColor:Colors.grey.shade400,

              ),
            ),
            SizedBox(width: 15,),
            IconButton(onPressed: (){
              setState(() {
                currentIndex=1;
              });
            },
              icon: Icon(
                Icons.favorite_border,
                size: 30,
                color:currentIndex ==2? kprimaryColor:Colors.grey.shade400,

              ),
            ),
            IconButton(onPressed: (){
              setState(() {
                currentIndex=3;
              });
            },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 25,
                color:currentIndex ==3? kprimaryColor:Colors.grey.shade400,

              ),
            ),
            IconButton(onPressed: (){
              setState(() {
                currentIndex=4;
              });
            },
              icon: Icon(Icons.search_off,
                size: 30,
                color:currentIndex ==4? kprimaryColor:Colors.grey.shade400,

              ),
            ),

          ],
        ),
      ),
      body:screens[currentIndex] ,
    );
  }
}
