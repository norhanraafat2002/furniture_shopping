import 'package:flutter/material.dart';
import 'package:untitled/widgets/app_color.dart';
import 'package:untitled/widgets/app_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SippingCard extends StatefulWidget {
  SippingCard({super.key});

  @override
  State<SippingCard> createState() => _SippingCardState();
}

class _SippingCardState extends State<SippingCard> {
  
  bool? isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(children: [
      Row(
        children: [
          Checkbox(
              activeColor: AppColor.black,
              value: isSelected,
              onChanged: (val) {
                setState(() {
                  isSelected= val;
                });
              }),
          AppText(
            title: "use as the shipping addres",
            color: 
            AppColor.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
      SizedBox(
        height: 16,
      ),
      Container(
        height: 120,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: AppColor.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Row(
              children: [
                AppText(
                    title: "Bruno fernandes",
                    color: AppColor.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                Spacer(),
                Icon(
                  FontAwesomeIcons.pen,
                  size: 19,
                ),
              ],
            ),
            Divider(
              color: AppColor.darkgray,
            ),
            Row(
              children: [
                AppText(
                  title: "25 rue Robert Latouche, Nice 062002",
                  maxLines: 2,
                  color: AppColor.gray,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
          ],
        ),
      ),
    ]));
  }
}
