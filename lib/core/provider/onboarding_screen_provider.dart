
import 'package:flutter/widgets.dart';

class OnboardingScreenProvider extends ChangeNotifier{
  int pageIndex = 0;
  double progressValue=0.25;

  PageController pageController = PageController();

  void onTabChanged() {
    switch(pageIndex){
      case 0:progressValue=0.25;
      break;
      case 1: progressValue=0.50;
      break;
      case 2:progressValue =0.75;
      break;
      case 3:progressValue=1;
      break;
      default : progressValue=0.25;
      break;
    }
    pageController.jumpToPage(pageIndex);
    notifyListeners();
  }
}