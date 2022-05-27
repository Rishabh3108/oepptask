import 'package:finaloepptask1/ui/Home/homepage.dart';
import 'package:finaloepptask1/ui/Notification/Notification.dart';
import 'package:finaloepptask1/ui/login/Login_page.dart';
import 'package:finaloepptask1/ui/profile/profile_page.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex=0;

  final List<Widget> _item = <Widget>[
     Homepage(),
     NotificationPage(),
     Profilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _item.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white,
        currentIndex: currentIndex,
       onTap: (index){
         print(index);
         currentIndex = index;
         setState(() {});
       },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text("Notification")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text("Profile")
          )
        ],
      ),
    );
  }
}
