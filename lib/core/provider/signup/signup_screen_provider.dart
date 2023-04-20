import '../../../app/app.dart';

class SignupScreenProvider extends ChangeNotifier {
  bool rememberMe = false;
  bool isVisible = true;
  String newGenderValue = 'Choose Gender';
  int pageIndex = 0;
  DateTime? selectedDate;
  PageController pageController = PageController();

  void datePicker(BuildContext context) async {
    DateTime? _pickerDate = await
    showDatePicker
      (
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2323),
    );

    if (_pickerDate != null) {
        selectedDate = _pickerDate;
    }
    notifyListeners();
  }
  changePasswordVisibility() {
    isVisible = !isVisible;
    notifyListeners();
  }

  onRememberMeChanged(bool value) {
    rememberMe = value;
    notifyListeners();
  }

  changeSelectedGender(String value) {
    newGenderValue = value;
    notifyListeners();
  }

  void onTabChanged() {
    pageController.jumpToPage(pageIndex);
    notifyListeners();
  }
}
