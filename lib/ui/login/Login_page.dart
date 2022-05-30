import 'package:finaloepptask1/ui/dashboard.dart';
import 'package:finaloepptask1/utils/shareprefrance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController userName  = TextEditingController();
  TextEditingController mobile  = TextEditingController();
  TextEditingController email  = TextEditingController();
  TextEditingController pass  = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: userName,
                    validator: (value){
                      if(value!.isEmpty){
                        return "please enter your name";
                      }
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  TextFormField(
                    controller: mobile,
                    maxLength: 10,
                    validator: (value){
                      if(value!.isEmpty){
                        return "please enter your mobile number";
                      }
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        counterText: '',
                        hintText: "Mobile No",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  TextFormField(
                    controller: email,
                    validator: (value){
                      if(value!.isEmpty){
                        return "please enter your email";
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextFormField(
                    controller: pass,
                    validator: (value){
                      if(value!.isEmpty){
                        return "please enter correct password";
                      }
                    },
                    obscureText:true ,
                      keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
          ),

          TextButton(onPressed: (){
            if(_formKey.currentState!.validate()){
              _formKey.currentState!.save();
              print(userName.text);
              print(email.text);
              print(mobile.text);
              UserPreference().setStringPref(UserPreference.userName, userName.text);
              UserPreference().setStringPref(UserPreference.email, email.text);
              UserPreference().setStringPref(UserPreference.mobile, mobile.text);
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Dashboard()));
              print("Form submited");
            }else{

            }
          }, child: const Text('Submit'))
        ],
      ),
    );
  }
}
