import 'package:alexia_exommerce_app/Provider/cart_provider.dart';
import 'package:alexia_exommerce_app/Provider/favourite_provider.dart';
import 'package:alexia_exommerce_app/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
ChangeNotifierProvider(create: (_)=> CartProvider(),
),
      ChangeNotifierProvider(create: (_)=> FavouriteProvider(),
      )
    ],


     child:MaterialApp(
debugShowCheckedModeBanner: false,
       home: BottomNavBar(

          ),
     ));
  }



