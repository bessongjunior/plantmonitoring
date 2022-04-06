import'package:flutter/material.dart';
import'package:flutter/cupertino.dart';
import 'package:plantmonitoring/utils/appcolors.dart';
import 'package:plantmonitoring/utils/iconhelper.dart';
import 'package:plantmonitoring/custom_widgets/iconfont.dart';
import 'package:plantmonitoring/utils/themebutton.dart';
import 'package:plantmonitoring/utils/utils.dart';
// import 'package:provider/provider.dart';
// import 'package:plantmonitoring/services/loginservice.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    //Todo: add login service provider here

   // LoginService loginService = Provider.of<LoginService>(context, listen: false);
  //v

    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                        'assets/images/of_main_bg.png',
                        fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: ClipOval(
                          child: Container(
                            width: 180,
                            height: 180,
                            color: AppColors.MAIN_COLOR,
                            alignment: Alignment.center,
                            child: IconFont(
                                iconName: IconFontHelper.MAIN_LOGO,
                                color: Colors.white,
                                size: 130
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      const Text('Welcome/a',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      const SizedBox(height: 40),
                      const Text('Productos Frescos.\nSaludables. A Tiempo',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          )
                      ),
                      const SizedBox(height: 40),
                      ThemeButton(
                        label: 'Skip everything!',
                        highlight: Colors.green[900],
                        color: AppColors.MAIN_COLOR,
                        onClick: (){},
                        // onClick: () {
                        //   Utils.mainAppNav.currentState!.pushNamed('/mainpage');
                        // },
                      ),
                      ThemeButton(
                        label: 'Go to Onboarding',
                        highlight: Colors.green[900],
                        color: AppColors.DARK_GREEN,
                        onClick: (){},
                        // onClick: () {
                        //   Utils.mainAppNav.currentState!.pushNamed('/onboardingpage');
                        // },
                      ),
                      ThemeButton(
                          label: "Sign in ",
                          labelColor: AppColors.MAIN_COLOR,
                          color: Colors.transparent,
                          highlight: AppColors.MAIN_COLOR.withOpacity(0.5),
                          borderColor: AppColors.MAIN_COLOR,
                          borderWidth: 4,
                         onClick: (){},
                         // onClick:
                          //() async {
                           // bool success = await loginService.signInWithGoogle();

                            //if (success) {
                           //   Utils.mainAppNav.currentState!.pushNamed('/mainpage');
                           // }
                         // }
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}