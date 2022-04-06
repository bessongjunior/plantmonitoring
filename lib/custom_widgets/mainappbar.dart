// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:plantmonitoring/utils/iconhelper.dart';
import 'package:plantmonitoring/utils/appcolors.dart';
import 'package:plantmonitoring/custom_widgets/userprofileheader.dart';

import 'iconfont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {

  Color themeColor;
  bool showProfilePic;

  MainAppBar({Key? key,
    this.themeColor = AppColors.MAIN_COLOR,
    this.showProfilePic = true
  }) : super(key: key);

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);
}


class MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        // onTap: () {
        //   Utils.mainAppNav.currentState!.popUntil((route) => route.settings.name == '/mainpage');
        // },
        child: Center(
          child: IconFont(
              iconName: IconFontHelper.LOGO,
              color: widget.themeColor,
              size: 40
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: widget.themeColor),
      // actions: [
      //   UserProfileHeader(
      //     showProfilePic: widget.showProfilePic,
      //   )
      // ],
    );
  }
}
