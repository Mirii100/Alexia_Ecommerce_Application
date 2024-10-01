import 'package:flutter/material.dart';


class ImageSlider extends StatelessWidget {
  final Future<void> Function(int) onChange;

  final int currentSlide;
  const ImageSlider({super.key,
  required this.currentSlide,
  required  this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRect(
child: PageView(
  scrollDirection: Axis.horizontal,
  allowImplicitScrolling: true,
  onPageChanged: onChange,
  physics: ClampingScrollPhysics(),
  children: [
    Image.asset('images/slider.jpg',
    fit: BoxFit.cover,
    ),
    Image.asset('images/ALEXIA.png',
      fit: BoxFit.cover,
    ),
    Image.asset('images/1.png',
      fit: BoxFit.cover,
    ),
    Image.asset('images/2.png',
      fit: BoxFit.cover,
    ),
    Image.asset('images/11.png',
      fit: BoxFit.cover,
    ),
    Image.asset('images/ax.png',
      fit: BoxFit.cover,
    ),
    Image.asset('images/ALEXIA_LOGO.png',
      fit: BoxFit.cover,
    ),

  ],
),
          ),
        ),
        Positioned.fill(
  bottom: 10,
  child: Align(
          alignment: Alignment.bottomCenter,
child:Row(
  mainAxisAlignment:MainAxisAlignment.center ,
  children:List<Widget>.generate (

      8,
          (index) => AnimatedContainer(
            duration: Duration(microseconds: 300),
            width: currentSlide ==index ?15:8,
  height: 8,
  margin: EdgeInsets.only(
  right: 3,
  ),
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: currentSlide ==index ? Colors.black :Colors.transparent,
  border: Border.all(
  color: Colors.black,
  ),
  ),
  )
      ,),

) ,
        ),
        ),
      ],
    );
  }
}
