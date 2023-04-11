import '../../app/app.dart';

class ConstList{
 static   List<Step> stepList() => [
    const Step(title: Text('6am - 8am '), content: Text('600ml')),
    const Step(title: Text('9am - 11am '), content: Text('500ml')),
    const Step(title: Text('11am - 2pm '), content: Text('1000ml')),
    const Step(title: Text('2pm - 4pm '), content: Text('700ml')),
    const Step(title: Text('4pm - now '), content: Text('900ml')),
  ];
}