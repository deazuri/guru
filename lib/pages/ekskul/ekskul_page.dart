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
import 'package:guru/models/ekskul.dart';
import 'package:guru/widgets/ekskul/jadwal_ekskul.dart';
import 'package:guru/pages/profile/profile_screen.dart';

class EkskulPage extends StatelessWidget {
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
                              'Eskul',
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
                                  onTap: () {},
                                  child: FacilityItem(
                                    name: 'Absensi Eskul',
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
                                      name: 'Jurnal Eskul',
                                      imageUrl:
                                          'assets/images/jurnal_ekskul.png'
                                      // onPressed: () {},
                                      ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: FacilityItem(
                                    name: '  Laporan\nAbsen Eskul',
                                    imageUrl:
                                        'assets/images/laporan_absen_ekskul.png',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: FacilityItem(
                                    name: '  Laporan \nJurnal Eskul',
                                    imageUrl:
                                        'assets/images/laporan_jurnal_ekskul.png',
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
                              'Jadwal Ekskul Anda',
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
                                JadwalEkskulCard(
                                  Ekskul(
                                    id: 1,
                                    hari: 'Hari ',
                                    ekskul: 'Senin',
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                JadwalEkskulCard(
                                  Ekskul(
                                    id: 1,
                                    hari: 'Nama Ekskul',
                                    ekskul: 'Basket',
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
                Navigator.push(
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
