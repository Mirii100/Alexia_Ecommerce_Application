import 'package:alexia_exommerce_app/constants.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcontentColor,
        borderRadius: BorderRadius.circular(30),

      ),
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5
      ),
      child: Row(
        children: [
          Icon(Icons.search,
          color: Colors.white,
              size: 30,),
          SizedBox(
         width: 10,

          ),
          Flexible(
            flex: 4,

            child: TextField(
              decoration: InputDecoration(
                hintText: "your Search  ...,",
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.grey,

          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.tune,
                color: Colors.blueGrey,

              ),
          )
        ],
      ),
    );
  }
}
