import 'package:alexia_exommerce_app/Provider/cart_provider.dart';
import 'package:alexia_exommerce_app/constants.dart';
import 'package:alexia_exommerce_app/nav_bar.dart';
import 'package:alexia_exommerce_app/screens/Cart/check_out.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider=CartProvider.of(context);
    final finalList=provider.cart;
//for quantity
    productQuantity(IconData icon,int index ){
      return GestureDetector(
        onTap: (){
          setState(() {
            icon ==Icons.add
                ? provider.incrementQtn(index)
                :provider.decrementQtn(index);

          });
        },
        child: Icon(icon,size: 20,),
      );
    }

    return Scaffold(
      //for total
      bottomSheet: CheckOutBox(),

      backgroundColor: kcontentColor,

      body: SafeArea(child: Column(
        children: [
          Padding(padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                IconButton(
                  style:IconButton.styleFrom(
                    backgroundColor:Colors.white,
                    padding:EdgeInsets.all(20),
                  ),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>BottomNavBar(),
                    ),);
                  },
                  iconSize: 30,
                  icon: Icon(Icons. arrow_back_ios),

                ),
                Text("my cart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Container(

                ),

              ],
            ),
          ),
          Expanded(

              child: ListView.builder(
                  itemCount: finalList.length,
                  itemBuilder: (context,index){
                    final cartItems=finalList[index];
            return Stack(
              children: [
                Padding(padding: EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,

                  ),
                  padding:EdgeInsets.all(10) ,
                  child: Row(
                    children: [
                      Container(
height: 120,width: 100,
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20),
color: kcontentColor,
                        ),
                        padding: EdgeInsets.all(10),
                        child:Image.asset(cartItems.image) ,

                      ),
                      SizedBox(width: 10,),
                     Column(
                       children: [
                         Text(cartItems.title,style: TextStyle(
                           fontWeight: FontWeight.bold,fontSize: 16
                         ),
                         ),
                         SizedBox(height: 5,),
                         Text(cartItems.category,style: TextStyle(
                             fontWeight: FontWeight.bold,fontSize: 14,
                           color: Colors.grey.shade400,


                         ),
                         ),
                         SizedBox(height: 5,),
                  Text(
                    "\$${cartItems.price}",
                    style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 14,
                    ),
                  ),

                    ],
                       crossAxisAlignment: CrossAxisAlignment.start,
                     ),
                    ],
                  ),
                ),
                ),
                Positioned(



                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){
                      finalList.removeAt(index);
                      setState(() {

                      });
                    }, icon: Icon(Icons.delete,
                    color:Colors.redAccent ,size: 26,
                    ),
                    ),

                    SizedBox(height: 10,),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: kcontentColor,border: Border.all(
                          color: Colors.grey.shade200,width: 2),
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          productQuantity(Icons.add, index),
                          SizedBox(width: 10,),
                          Text(cartItems.quantity.toString(),style:
                            TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                          ),
                          SizedBox(width: 10,),
                          productQuantity(Icons.remove, index),
                          SizedBox(width: 10,),
                        ],
                      ),
                    ),
                  ],
                ),
                top: 35,
                right: 35,
                ),
              ],
            );
          }),
          ),

        ],
      ),
      ),
    );
  }


}
