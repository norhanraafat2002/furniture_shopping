//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/widgets/app/card_product.dart';
//import 'package:untitled/widgets/app/card_product.dart';
import 'package:untitled/widgets/app/catd_category.dart';
//import 'package:untitled/widgets/app_app_bar.dart';
import 'package:untitled/widgets/app_color.dart';
import 'package:untitled/widgets/app_text.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> values = [
    'assets/images/image1.png',
    'assets/images/image1.png',
    'assets/images/image1.png',
    'assets/images/image1.png'
  ];

  List menus = ["popular", "chair", "table", "bed", "chair"];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          FontAwesomeIcons.search,
          color: AppColor.gray,
          weight: 24,
        ),
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 104, 102, 102),
        ),
        title: Column(children: [
          AppText(
            title: "Make home",
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: AppColor.gray,
          ),
          AppText(
            title: 'BEAUTIFUL',
            color: AppColor.black,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ]),
        actions: [
          Icon(
            FontAwesomeIcons.cartShopping,
            weight: 24,
            color: AppColor.gray,
          ),
        ],
      ),
      body: Column(children: [
        Container(
          child: CardCategory(),
        ),
        SizedBox(
          height: 40,
        ),
        Expanded(
          child: CardProduct(),
          /*
          GridView.builder(
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
          ),*/
        ),
      ]),
    );
  }
}
