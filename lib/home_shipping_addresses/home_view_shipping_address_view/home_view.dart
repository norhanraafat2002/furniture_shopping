import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/widgets/app_color.dart';
//import 'package:untitled/widgets/app_text.dart';
import 'package:untitled/widgets/sipping_card.dart';
import '../../widgets/app_app_bar.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List check = [
    "use as the shippind address",
    "use as the shippind address",
    "use as the shippind address"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 240, 240),
      appBar: AppAppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.white,
        onPressed: () {},
        child: Icon(
          FontAwesomeIcons.plus,
          color: AppColor.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            Container(
              child: ListView.builder(
                itemCount: check.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return SippingCard();
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
