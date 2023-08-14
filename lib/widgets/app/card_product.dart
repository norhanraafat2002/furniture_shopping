import 'package:flutter/material.dart';
import 'package:untitled/widgets/app_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardProduct extends StatelessWidget {
  CardProduct({super.key});

  final List<String> values = [
    'asset/images/image1.png',
    'asset/images/image1.png',
    'asset/images/image1.png',
    'asset/images/image1.png'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Column(children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(values[index]), fit: BoxFit.fill),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 35,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 190, 189, 189),
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    FontAwesomeIcons.bagShopping,
                    color: AppColor.white,
                  ),
                ),
              ),
            ],
          )
        ]);
      },
    );
  }
}
