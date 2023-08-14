import 'package:flutter/material.dart';
import 'package:untitled/widgets/app_color.dart';

class CardCategory extends StatefulWidget {
  CardCategory({super.key});

  @override
  State<CardCategory> createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  List menus = ["popular", "chair", "table", "bed", "chair"];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: List.generate(
            menus.length,
            (index) => InkWell(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: activeIndex == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(
                        color: activeIndex == index
                            ? Colors.transparent
                            : Colors.black), //Appcolor.black
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      menus[index],
                      style: TextStyle(
                        color:
                            activeIndex == index ? Colors.white : Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
