import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guru/theme.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:guru/pages/dashboard/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: orangeColor,
        radius: 80.0,
        child: Image.asset(
          'assets/images/splash.png',
        ),
      ),
    );
    final text = Text.new(
      'Login Guru dan Karyawan',
      textAlign: TextAlign.center,
      style: orangeTextStyle.copyWith(
        fontSize: 20,
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'alucard@gmail.com',
      style: TextStyle(
        color: orangeColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        hintText: 'Email',
        prefixIcon: Icon(
          Icons.mail,
          color: orangeColor,
        ),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: orangeColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.grey)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      style: TextStyle(
        color: orangeColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        fillColor: orangeColor,
        prefixIcon: Icon(
          Icons.lock,
          color: orangeColor,
        ),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: orangeColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.grey)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            // Navigator.of(context).pushNamed(DashboardPage.tag);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DashboardPage(),
              ),
            );
          },
          color: orangeColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text('Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              )),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 30.0),
            text,
            SizedBox(
              height: 24,
            ),
            email,
            SizedBox(height: 16),
            password,
            SizedBox(height: 24.0),
            loginButton,
          ],
        ),
      ),
    );
  }
}
