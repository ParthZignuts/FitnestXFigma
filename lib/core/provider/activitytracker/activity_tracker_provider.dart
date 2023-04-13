import 'package:flutter/cupertino.dart';

class ActivityTrackerProcider extends ChangeNotifier{
  bool isShowMore=false;
  showMore(bool value){
    isShowMore=value;
    notifyListeners();
  }
}