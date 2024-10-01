import 'package:alexia_exommerce_app/constants.dart';
import 'package:alexia_exommerce_app/screens/Details/Widget/addto_cart.dart';
import 'package:alexia_exommerce_app/screens/Details/Widget/details_widget.dart';
import 'package:alexia_exommerce_app/screens/Details/image_slide.dart';
import 'package:alexia_exommerce_app/screens/Details/items_details.dart';
import 'package:alexia_exommerce_app/screens/Home/WIDGET/product.dart';
import 'package:flutter/material.dart';
import '../Home/WIDGET/product.dart';
import '../Home/WIDGET/product.dart';
import 'detail_app_bar.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({super.key,
  required this.product});


  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentImage=0;
  int currentSlide=0;
  int currentColor=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      //for add cart,icon and quantity
      floatingActionButton: AddtoCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      body: SafeArea(

        child:
        SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            //this is for share and favourite
 DetailAppBar(product: widget.product,),
            //writting  for images slide
            ImageSlide(image: widget.product.image, onChange: (index){
              setState(() {
currentImage=index;
              });
            }),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children:List<Widget>.generate (

                8,
                    (index) => AnimatedContainer(
                  duration: Duration(microseconds: 300),
                  width: currentImage ==index ?15:8,
                  height: 8,
                  margin: EdgeInsets.only(
                    right: 3,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentImage ==index ? Colors.black :Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                )
                ,),

            ) ,
            SizedBox(
              height: 19,

            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(38),
                  topLeft: Radius.circular(38),

                    ),

              ),
              padding: EdgeInsets.only(
                left: 19,
                right:19,
                top: 20,
                bottom: 200,

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //creating for product name,rate,selling and price
                  ItemsDetails(product: widget.product),
            SizedBox(height: 20,),
                  Text("color",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 23,
                  ),),
                  SizedBox(height: 20,),
                  Row(
                    children: List.generate(
                        widget.product.colors.length,(index)=>GestureDetector(
                      child:AnimatedContainer(
                        duration: Duration(
                          milliseconds: 300,
                      ),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:currentColor ==index ?Colors.white70 :widget.product.colors[index],
border: currentColor ==index ?Border.all(color:widget.product.colors[index], ):null,

                        ),
                        padding:currentColor ==index ?
                        EdgeInsets.all(2):null,
                        margin: EdgeInsets.only(
                          right: 10
                        ),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: widget.product.colors[index],
                            shape: BoxShape.circle,

                          ),
                        ),
                      ) ,
                        onTap: (){
                        setState(() {
                          currentColor=index;
                        });
                        },
                      ),
                      ),

                  ),
                  SizedBox(height: 20,),
                  //for description
Description( description: widget.product.description,),

                ],
              ),
            ),
          ],
                ),
        ),),
    );
  }
}
