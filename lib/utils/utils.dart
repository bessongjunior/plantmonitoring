import 'package:flutter/material.dart';
import 'package:plantmonitoring/models/onboardingcontent.dart';


class Utils {

  //static GlobalKey<NavigatorState> mainListNav = GlobalKey();
  //static GlobalKey<NavigatorState> mainAppNav = GlobalKey();
  
  static List<OnboardingContent> getOnboarding() {
    return [
      OnboardingContent(
        message: 'A healthy \n Meal from a \n Healthy plant ',
        img: 'onboard1'
      ),
      OnboardingContent(
        message: 'Get real time analytics\n About your \n Plants & environment',
        img: 'onboard2'
      ),
      OnboardingContent(
        message: 'If you trust us\n Thats why you get\n To use your smart phone',
        img: 'onboard3' 
      )
    ];
  }


  static String deviceSuffix(BuildContext context) {
    String deviceSuffix = '';
    TargetPlatform platform = Theme.of(context).platform;
    switch(platform) {
      case TargetPlatform.android:
        deviceSuffix = '_android';
        break;
      case TargetPlatform.iOS:
        deviceSuffix = '_ios';
        break;
      default: 
        deviceSuffix = '';
        break;
    }

    return deviceSuffix;
  }
}
