import 'package:flutter/material.dart';

class ImageSlide extends StatelessWidget {
  final Function (int) onChange;
  final String image;

  const ImageSlide({super.key,
  required this.image,
  required this.onChange , }
);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: PageView.builder(
        onPageChanged: onChange,
          itemBuilder: (context,index){

            return Hero(
              tag: image,

                child: Image.asset(image));
          },),
    );
  }
}
