import 'package:alexia_exommerce_app/constants.dart';
import 'package:alexia_exommerce_app/screens/Home/WIDGET/category.dart';
import 'package:alexia_exommerce_app/screens/Home/WIDGET/home_app_bar.dart';
import 'package:alexia_exommerce_app/screens/Home/WIDGET/image_slider.dart';
import 'package:alexia_exommerce_app/screens/Home/WIDGET/product_cart.dart';
import 'package:flutter/material.dart';

import 'WIDGET/product.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider =0;
  @override
  Widget build(BuildContext context) {

    List<List<Product>> selectedCategories = [];

    return Scaffold(
backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
        child:Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),

            CustomAppBar(),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
children: [
  IconButton(
    style:IconButton.styleFrom(backgroundColor:kcontentColor,
    padding:EdgeInsets.all(20),
    ),
    onPressed: (){},
    icon: Icon(Icons.playlist_add_circle_sharp),
  ),
  IconButton(
    style:IconButton.styleFrom(backgroundColor:kcontentColor,
      padding:EdgeInsets.all(20),
    ),
    onPressed: (){},
    iconSize: 30,
    icon: Icon(Icons. notifications_outlined),

  ),
],
            ),
            SizedBox(height: 20,),
            SearchBar(),
            SizedBox(height: 20,),
            ImageSlider(currentSlide:currentSlider ,
                onChange: (value)
                async {
              setState(() {
                currentSlider=value;
              },
              );
              return;
                },

            ),
const SizedBox(height: 20,),
            Categories(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('special offer at  codding time ',
                style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w800,

                ),),
                Text('see all of them',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Colors.black54,

                  ),
                ),
                SizedBox(
                  width: 11,
                ),

              ],
            ),
            GridView.builder(
             physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              childAspectRatio:0.78 ,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
                itemCount: products.length,
                itemBuilder: (context,index){
              return ProductCard(
                product:products[index] ,
              );
                },
            ),
          ],
        ) ,
        ),
      ),
    );
  }
}
