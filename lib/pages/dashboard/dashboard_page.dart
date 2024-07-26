import 'package:guru/theme.dart';
import 'package:guru/widgets/dashboard/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:guru/models/jadwal.dart';
import 'package:guru/widgets/bottom_navbar_item.dart';
import '../../widgets/dashboard/jadwal_item.dart';
import 'package:guru/pages/login/login_page.dart';
import 'package:guru/pages/prakerin/prakerin_page.dart';
import 'package:guru/pages/persuratan/persuratan_page.dart';
import 'package:guru/pages/ekskul/ekskul_page.dart';
import 'package:guru/pages/kegiatan kbm/kbm_page.dart';
import 'package:guru/pages/presensi harian/presensi_page.dart';
import 'package:guru/pages/profile/profile_screen.dart';

class DashboardPage extends StatelessWidget {
  @override
  static const String routeName = '/dashboard';
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        throw (url);
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // Container Nama
            Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              // color: Colors.amber,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Selamat Datang\nBpk / Ibu Diona \nSekarsirih Melati Putri',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    Image.asset(
                      'assets/images/profile.png',
                      width: 70,
                    ),
                  ],
                ),
              ),
            ),
            // Container Dasboard
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                //color: Colors.red,
                child: ListView(
                  children: [
                    // SizedBox(
                    //   height: 150,
                    // ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                          color: orangeColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          // NOTE: MAIN FACILITIES
                          Padding(
                            padding: EdgeInsets.only(left: edge),
                            child: Text(
                              'Dashboard',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: edge,
                            ),
                            child: Wrap(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PresensiPage(),
                                      ),
                                    );
                                  },
                                  child: FacilityItem(
                                    name: 'Presensi \n   Harian',
                                    imageUrl:
                                        'assets/images/presensi harian.png',
                                  ),
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => KbmPage(),
                                      ),
                                    );
                                  },
                                  child: FacilityItem(
                                      name: 'Kegiatan KBM',
                                      imageUrl: 'assets/images/kegiatan kbm.png'
                                      // onPressed: () {},
                                      ),
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => EkskulPage(),
                                      ),
                                    );
                                  },
                                  child: FacilityItem(
                                    name: 'Eskul',
                                    imageUrl: 'assets/images/eskul.png',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PrakerinPage(),
                                      ),
                                    );
                                  },
                                  child: FacilityItem(
                                    name: 'Prakerin',
                                    imageUrl: 'assets/images/prakerin.png',
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PersuratanPage(),
                                      ),
                                    );
                                  },
                                  child: FacilityItem(
                                    name: 'Persuratan',
                                    imageUrl: 'assets/images/persuratan.png',
                                    // onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 72,
                          ),
                          //NOTE LOCATION
                          Padding(
                            padding: EdgeInsets.only(left: edge),
                            child: Text(
                              'Jadwal KBM Hari ini',
                              style: regularTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: edge,
                            ),
                            child: Column(
                              children: [
                                JadwalCard(
                                  Jadwal(
                                    id: 1,
                                    mapel: 'Sejarah Indonesia',
                                    kelas: 'kelas TKJ1',
                                    jam: '1 - 2',
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                JadwalCard(
                                  Jadwal(
                                    id: 1,
                                    mapel: 'Sejarah Indonesia',
                                    kelas: 'kelas TKJ2',
                                    jam: '3 - 4',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 200,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
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
                imageUrl: 'assets/images/Icon_home_solid.png',
                isActive: true,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: BottomNavbarItem(
                imageUrl: 'assets/images/Icon_profile.png',
                isActive: false,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
