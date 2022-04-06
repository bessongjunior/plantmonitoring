// ignore_for_file: must_be_immutable

import'package:flutter/material.dart';
import'package:flutter/cupertino.dart';
import 'package:plantmonitoring/models/loginusermodel.dart';
import 'package:plantmonitoring/services/loginservice.dart';
//import 'package:provider/provider.dart';


class UserProfileHeader extends StatelessWidget {

  bool? showProfilePic;
  
  UserProfileHeader({Key? key, 
    this.showProfilePic
  }) : super(key: key);

  String get imgPath => '';

  @override
  Widget build(BuildContext context) {

   // Todo: add login service to fetch image from ggle here

    // return Consumer<LoginService>(
    //   builder: (context, loginService, child) {
    //     LoginUserModel? userModel = loginService.loggedInUserModel;
    //
    //     String? imgPath = userModel != null ? userModel.photoUrl : '';
    //
    //     return this.showProfilePic! && imgPath!.length > 0 ?
    //     Container(
    //         margin: EdgeInsets.only(right: 10),
    //         padding: EdgeInsets.all(10),
    //         child: ClipOval(
    //             child: Image.network(imgPath)
    //         )
    //     ): SizedBox(width: 40, height: 40);
    //   },
    // );
    return Container(
      margin: EdgeInsets.only(right: 10),
               padding: EdgeInsets.all(10),
               child: ClipOval(
                   child: Image.network(imgPath)
               )
    ); 
  }
}