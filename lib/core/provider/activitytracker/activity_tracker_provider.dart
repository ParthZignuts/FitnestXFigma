
import 'package:flutter/cupertino.dart';

class ActivityTrackerProcider extends ChangeNotifier{
  bool isShowMore=false;
  bool switchTheme=false;
  showMore(bool value){
    isShowMore=value;
    notifyListeners();
  }

  onSwitchTheme(bool value){
    print('theme change call');
    switchTheme=value;
    print(switchTheme);
    notifyListeners();
  }



}