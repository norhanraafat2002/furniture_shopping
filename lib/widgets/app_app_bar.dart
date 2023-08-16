import 'package:flutter/material.dart';
import 'package:untitled/widgets/app_color.dart';
import 'package:untitled/widgets/app_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  AppAppBar({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        FontAwesomeIcons.chevronLeft,
        color: AppColor.black,
        weight: 24,
        size: 19,
      ),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 243, 240, 240),
      elevation: 0,
      iconTheme: IconThemeData(
        color: const Color.fromARGB(255, 104, 102, 102),
      ),
      title: AppText(
        title: "Shipping address",
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppColor.darkblack,
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
