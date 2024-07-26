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
import 'package:guru/pages/dashboard/dashboard_page.dart';
import 'package:guru/models/jam_presensi.dart';
import 'package:guru/widgets/presensi harian/jam_presensi_item.dart';
import 'package:guru/pages/profile/profile_screen.dart';

class PresensiPage extends StatelessWidget {
  @override
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
                    Image.asset(
                      'assets/images/profile.png',
                      width: 70,
                    ),
                    Text(
                      'Selamat Datang\nBpk / Ibu Diona \nSekarsirih Melati Putri',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                      ),
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
                              'Presensi Harian',
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
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => PresensiPage(),
                                    //   ),
                                    // );
                                  },
                                  child: FacilityItem(
                                    name: 'Presensi',
                                    imageUrl:
                                        'assets/images/presensi harian.png',
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: FacilityItem(
                                      name: 'Ketidakhadiran',
                                      imageUrl:
                                          'assets/images/ketidakhadiran.png'
                                      // onPressed: () {},
                                      ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: FacilityItem(
                                    name: 'Laporan',
                                    imageUrl: 'assets/images/laporan.png',
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
                              style: blackTextStyle.copyWith(
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
                                JamPresensiCard(
                                  JamPresensi(
                                    id: 1,
                                    presensi: 'Jam Datang : ',
                                    jam: '07.00',
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                JamPresensiCard(
                                  JamPresensi(
                                    id: 1,
                                    presensi: 'Jam Pulang : ',
                                    jam: '16.00',
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
                imageUrl: 'assets/images/Icon_home_solid_nonactive.png',
                isActive: false,
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
