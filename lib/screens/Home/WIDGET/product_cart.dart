import 'package:alexia_exommerce_app/Provider/favourite_provider.dart';
import 'package:alexia_exommerce_app/constants.dart';
import 'package:alexia_exommerce_app/screens/Details/details.dart';
import 'package:alexia_exommerce_app/screens/Home/WIDGET/product.dart';
import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key,
  required this.product});

  @override
  Widget build(BuildContext context) {
    final provider=FavouriteProvider.of(context);
    return  GestureDetector(
      onTap: (){
        Navigator.push(context,
          MaterialPageRoute(
            builder: (context)=>DetailsScreen(
            product: product,

        ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontentColor,

            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,


              children: [
SizedBox(
  height: 5,

),
                Center(
                  child: Hero(
                    tag:product.image ,

                    child: Image.asset(product.image,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  
                ),
                Padding(padding: EdgeInsets.only(
                  left: 10
                ),
                  child: Text(
                    product.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,

                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "\$${product.title}",
                      style: TextStyle(
fontWeight: FontWeight.bold,
                        fontSize: 17,

                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\$${product.price}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,

                          ),
                        ),
                        Row(
                          children: List.generate(product.colors.length, (index) =>Container(
width: 18,
  height: 18,
    margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                              color: product.colors[index],
                              shape: BoxShape.circle,

                            ),

                          ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ) ,
          ),
          Positioned(child: Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 40,width: 40,
              decoration: BoxDecoration(
                color: kprimaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                ),

                ),
child: GestureDetector(
  onTap: (){
    provider.toggleFavourite(product);

  },
  child: Icon(
    provider.isExist(product)?Icons.favorite:
    Icons.favorite_border,
  color: Colors.white,size: 22,
  ),
),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
