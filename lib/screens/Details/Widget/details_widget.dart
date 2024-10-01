import 'package:alexia_exommerce_app/constants.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({super.key,
  required this.description});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Container(
    width: 120,
    height: 40,
    decoration: BoxDecoration(
      color: kprimaryColor,

      borderRadius: BorderRadius.circular(20),

    ),
    alignment: Alignment.center,
    child:
    Text("descripion",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: Colors.white,

    ),
    ),

  ),
  Text("specification",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: Colors.black,

    ),),
  Text("reviews",
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,

    ),),
],
),
        SizedBox(
          height: 20,
        ),
        Text(description,style: TextStyle(
          fontSize: 16,
          color: Colors.blueGrey,

        ),
        ),
      ],
    );
  }
}
