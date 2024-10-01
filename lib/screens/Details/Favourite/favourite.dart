import 'package:alexia_exommerce_app/Provider/favourite_provider.dart';
import 'package:alexia_exommerce_app/constants.dart';
import 'package:flutter/material.dart';
class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    final provider=FavouriteProvider.of(context);
    final finalList=provider.favorites;
    return  Scaffold(
      backgroundColor: kcontentColor,
      appBar:AppBar(
        backgroundColor: kcontentColor,
        title: Text("favorites",
          style: TextStyle(
            fontWeight: FontWeight.bold,

          ),
        ),
        centerTitle: true,

      ) ,
      body: Column(
        children: [
          Expanded(

            child: ListView.builder(
              shrinkWrap: true,
                itemCount: finalList.length,
                itemBuilder: (context,index){
                  final favoriteItems=finalList[index];
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
                                height: 85,width: 85,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(20),
                                  color: kcontentColor,
                                ),
                                padding: EdgeInsets.all(10),
                                child:Image.asset(favoriteItems.image) ,

                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(favoriteItems.title,style: TextStyle(
                                      fontWeight: FontWeight.bold,fontSize: 16
                                  ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(favoriteItems.category,style: TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 14,
                                    color: Colors.grey.shade400,


                                  ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "\$${favoriteItems.price}",
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

                          ],
                        ),
                        top: 40,
                        right: 35,
                      ),
                    ],
                  );
                }),
          ),

        ],
      ),
    );
  }
}
