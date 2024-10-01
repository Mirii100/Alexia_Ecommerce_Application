import 'package:flutter/material.dart';
import 'package:alexia_exommerce_app/constants.dart';
import '../../Provider/cart_provider.dart';


class CheckOutBox extends StatelessWidget {
  const CheckOutBox({super.key});

  @override
  Widget build(BuildContext context) {
    final provider=CartProvider.of(context);
    return Container(
      height: 300,width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),

        ),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,

              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              filled: true,
              fillColor: kcontentColor,
              hintText: "enter discount code ",
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
              suffixIcon: TextButton(onPressed: (){},
                  child: Text("Apply",
                  style: TextStyle(color: kprimaryColor,
                  fontSize: 20,fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("subtotals",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold,

              ),),
              Text("\$${provider.totalPrice}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("total",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              Text("\$${provider.totalPrice}",
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: kprimaryColor,
                minimumSize: Size(double.infinity, 55),

              ),
              child: Text("checkBox",style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),
              ),
          ),
        ],
      ),
    );
  }
}
