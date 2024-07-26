import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guru/theme.dart';
import 'package:guru/widgets/bottom_navbar_item.dart';
import 'package:guru/pages/dashboard/dashboard_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35),
                ),
                color: orangeColor,
              ),
              child: Container(
                width: double.infinity,
                height: 200,
                child: Container(
                  alignment: Alignment(0.0, 2.5),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 60.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Sekarsirih Melati Putri",
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueGrey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "jl Sulawesi No.3, Malang",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "SMA Negeri X Malang",
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black45,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 25,
            ),
            // Text(
            //   "App Developer || Digital Marketer",
            //   style: TextStyle(
            //       fontSize: 18.0,
            //       color: Colors.black45,
            //       letterSpacing: 2.0,
            //       fontWeight: FontWeight.w300),
            // ),
            // Card(
            //   margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         Expanded(
            //           child: Column(
            //             children: [
            //               Text(
            //                 "Project",
            //                 style: TextStyle(
            //                     color: Colors.blueAccent,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w600),
            //               ),
            //               SizedBox(
            //                 height: 7,
            //               ),
            //               Text(
            //                 "15",
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w300),
            //               )
            //             ],
            //           ),
            //         ),
            //         Expanded(
            //           child: Column(
            //             children: [
            //               Text(
            //                 "Followers",
            //                 style: TextStyle(
            //                     color: Colors.blueAccent,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w600),
            //               ),
            //               SizedBox(
            //                 height: 7,
            //               ),
            //               Text(
            //                 "2000",
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w300),
            //               )
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 50,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     // RaisedButton(
            //     //   onPressed: (){
            //     //   },
            //     //   shape:  RoundedRectangleBorder(
            //     //     borderRadius: BorderRadius.circular(80.0),
            //     //   ),
            //     //   child: Ink(
            //     //     decoration: BoxDecoration(
            //     //       gradient: LinearGradient(
            //     //           begin: Alignment.centerLeft,
            //     //           end: Alignment.centerRight,
            //     //           colors: [Colors.pink,Colors.redAccent]
            //     //       ),
            //     //       borderRadius: BorderRadius.circular(30.0),
            //     //     ),
            //     //     child: Container(
            //     //       constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
            //     //       alignment: Alignment.center,
            //     //       child: Text(
            //     //         "Contact me",
            //     //         style: TextStyle(
            //     //             color: Colors.white,
            //     //             fontSize: 12.0,
            //     //             letterSpacing: 2.0,
            //     //             fontWeight: FontWeight.w300
            //     //         ),
            //     //       ),
            //     //     ),
            //     //   ),
            //     // ),
            //     // RaisedButton(
            //     //   onPressed: (){
            //     //   },
            //     //   shape:  RoundedRectangleBorder(
            //     //     borderRadius: BorderRadius.circular(80.0),
            //     //   ),
            //     //   child: Ink(
            //     //     decoration: BoxDecoration(
            //     //       gradient: LinearGradient(
            //     //           begin: Alignment.centerLeft,
            //     //           end: Alignment.centerRight,
            //     //           colors: [Colors.pink,Colors.redAccent]
            //     //       ),
            //     //       borderRadius: BorderRadius.circular(80.0),
            //     //     ),
            //     //     child: Container(
            //     //       constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
            //     //       alignment: Alignment.center,
            //     //       child: Text(
            //     //         "Portfolio",
            //     //         style: TextStyle(
            //     //             color: Colors.white,
            //     //             fontSize: 12.0,
            //     //             letterSpacing: 2.0,
            //     //             fontWeight: FontWeight.w300
            //     //         ),
            //     //       ),
            //     //     ),
            //     //   ),
            //     // )
            //   ],
            // )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardPage(),
                  ),
                );
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/images/Icon_home_solid_nonactive.png',
                isActive: false,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/images/Icon_profile_solid.png',
                isActive: true,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
