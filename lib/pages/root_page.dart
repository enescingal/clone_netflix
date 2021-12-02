import 'package:clone_netflix/pages/search_page.dart';
import 'package:clone_netflix/theme/color.dart';
import 'package:clone_netflix/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'coming_soon_page.dart';
import 'dowload_page.dart';

import 'package:line_icons/line_icons.dart';

import 'home_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: getAppBar(),
      body: getBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: getFloatingActionButton(),
    );
  }

  PreferredSize getAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(LineIcons.bars), color: white, onPressed: () {}),
            SvgPicture.asset(
              "assets/images/logo.svg",
              width: 80,
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: white),
                image: DecorationImage(
                    image: NetworkImage(profile), fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: selectedIndex,
      children: [
        HomePage(),
        SearchPage(),
        ComingSoonPage(),
        DownloadPage(),
      ],
    );
  }

  Widget getFloatingActionButton() {
    return NavigationBar(
      selectedIndex: selectedIndex,
      showActiveButtonText: false,
      textStyle: TextStyle(color: white, fontWeight: FontWeight.bold),
      navigationBarButtons: [
        NavigationBarButton(
          icon: LineIcons.home,
          backgroundColor: black,
        ),
        NavigationBarButton(
          icon: LineIcons.search,
          backgroundColor: black,
        ),
        NavigationBarButton(
          icon: LineIcons.youtube,
          backgroundColor: black,
        ),
        NavigationBarButton(
          icon: LineIcons.download,
          backgroundColor: black,
        ),
      ],
      onTabChange: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
