import 'package:alexia_exommerce_app/constants.dart';
import 'package:alexia_exommerce_app/screens/Home/WIDGET/product.dart';
import 'package:flutter/material.dart';


class ItemsDetails extends StatelessWidget {
  final Product product;

  const ItemsDetails({super.key,
  required this.product});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment:CrossAxisAlignment.start ,

      children: [
        Text(product.title,
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 24,

        ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${product.price}",
                style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,

                ),
                ),
                SizedBox(
                  height: 10,
                ),
                //rating
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kprimaryColor,

                    ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child:Row(
                        children: [
                          Icon(Icons.star,size: 15,
                          color: Colors.white,
                          ),
                          SizedBox(width: 4,),
                          Text(product.rate.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 12,

                            ),
                          ),
                        ],
                      ) ,
                    ),
                    SizedBox(
                      width: 5,

                    ),
                    Text(product.review,
                    style: TextStyle(
                      fontSize: 14,fontWeight: FontWeight.bold,
                      color: Colors.grey,

                    ),),
                  ],
                ),
                ]
                ),
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: product.seller,
                    style: TextStyle(
                      fontSize: 16,

                    ),
                  ),
                ],
              text: "seller :",

              style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.bold,

              ),
            ),
            ),
          ],
        ),


     ],
    );
  }
}
