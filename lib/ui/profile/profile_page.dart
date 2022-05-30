import 'package:finaloepptask1/utils/shareprefrance.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           CircleAvatar(radius: 50,child: Icon(Icons.supervised_user_circle_sharp,size: 80,),),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(crossAxisAlignment:CrossAxisAlignment.start  ,
                children: [
                Text(
                  UserPreference().getStringPref(UserPreference.userName),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(height: 20,),
                Text(
                  UserPreference().getStringPref(UserPreference.email),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(height: 20,),
                Text(
                  'Setting',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(height: 20,),

                Text(
                  'Help',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(height: 20,),
                Text(
                  'Logout',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
                ),

              ],),
            )

          ],
        ),
      ),
    );
  }
}
