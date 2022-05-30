import 'package:finaloepptask1/ui/dashboard.dart';
import 'package:finaloepptask1/ui/login/Login_page.dart';
import 'package:finaloepptask1/utils/shareprefrance.dart';
import 'package:flutter/material.dart';

void main() {

  runApp( Rishabh());
}
class Rishabh extends StatefulWidget {


  @override
  State<Rishabh> createState() => _RishabhState();
}

class _RishabhState extends State<Rishabh> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ini();
  }

 Future ini() async {
   await UserPreference.init();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage(),);
  }
}
