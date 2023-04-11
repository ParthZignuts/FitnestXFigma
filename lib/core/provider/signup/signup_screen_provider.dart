import '../../../app/app.dart';

class SignupScreenProvider extends ChangeNotifier {
  bool rememberMe = false;
  bool isVisible = true;
  String newGenderValue='Choose Gender';
  int pageIndex = 0;
  PageController pageController = PageController();

  changePasswordVisibility() {
    isVisible = !isVisible;
    notifyListeners();
  }

  onRememberMeChanged(bool value) {
    rememberMe = value;
    notifyListeners();
  }

  changeSelectedGender(String value){
    newGenderValue=value;
    notifyListeners();
  }


  void onTabChanged() {
    pageController.jumpToPage(pageIndex);
    notifyListeners();
  }
}
