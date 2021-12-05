import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joyboy/controllers/MenuController.dart';
import 'package:joyboy/screens/home/home_screen.dart';
import 'package:joyboy/screens/main/components/web_menu.dart';
import 'package:joyboy/screens/main/components/socal.dart';
import '../../constants.dart';
import 'components/header.dart';
import 'components/side_menu.dart';
import '../../responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

final MenuController _controller = Get.put(MenuController());

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("ada yang error pada database");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              key: _controller.scaffoldkey,
              drawer: SideMenu(),
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: aColor,
                textTheme: GoogleFonts.secularOneTextTheme(),
                title: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: _customAppBar(context),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Header(),
                    Container(
                      padding: EdgeInsets.all(kDefaultPadding),
                      constraints: BoxConstraints(maxWidth: kMaxWidth),
                      child: SafeArea(child: HomeScreen()),
                    ),
                  ],
                ),
              ),
            );
          }
          return CircularProgressIndicator();
        });
  }
}

Widget _customAppBar(BuildContext context) {
  return Row(
    children: [
      if (!Responsive.isDesktop(context))
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            _controller.openOrCloseDrawer();
          },
        ),
      Spacer(),
      Row(
        children: [
          Text('Joy',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              )),
          Text('Boy',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              )),
        ],
      ),
      Spacer(),
      Spacer(),
      if (Responsive.isDesktop(context)) WebMenu(),
      Spacer(),
      // Socal
      Socal(),
      Spacer(),
    ],
  );
}
