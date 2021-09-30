import 'package:flutter/material.dart';
import 'package:homefit/widgets/widgets.dart';

import 'constants/constant.dart';

class HFAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const HFAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: HFText(title,
          color: Colors.white,
          weight: HFTextWeight.bold,
          size: HFTextSize.xLarge),
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )),
      backgroundColor: HFColor.orange,
      toolbarHeight: 70,
      shadowColor: HFColor.gray.withOpacity(.3),
      centerTitle: true,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(96);
}
