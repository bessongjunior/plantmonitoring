import'package:flutter/material.dart';
import'package:flutter/cupertino.dart';
import 'package:plantmonitoring/utils/appcolors.dart';
import 'package:plantmonitoring/utils/iconhelper.dart';
import 'package:plantmonitoring/custom_widgets/iconfont.dart';

// ignore: must_be_immutable
class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({Key? key, required this.duration, required this.goToPage}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: add constructor to load data from firebase here?
    // Future.delayed(Duration(seconds: duration), () async {
    //   //wait for firebase initialisation to take place
    //   FirebaseApp app = await Firebase.initializeApp();
    //   PlService.getPlantCollectionFromFirebase()
    //       .then((value) {
    //         ()=> Navigator.push( context, MaterialPageRoute(builder: (context)=> goToPage!));
    //   });
    // });

    Future.delayed(Duration(seconds:duration), ()=> Navigator.push(
      context, MaterialPageRoute(builder: (context)=> goToPage)
    ));

    return Material(
        child: Container(
            color: AppColors.MAIN_COLOR,
            alignment: Alignment.center,
            child: Stack(
              children: [
                Align(
                  child: IconFont(
                      color: Colors.white,
                      iconName: IconFontHelper.LOGO,
                      size: 80
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white.withOpacity(0.5)),
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}
