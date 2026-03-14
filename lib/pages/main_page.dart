import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:tarmiz_community_app/pages/events_page.dart';

import 'home_page.dart';
import 'join_community_page.dart';
import 'members_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );

  List<Widget> _pages() {
    return [
      const HomePage(),
      const JoinCommunityPage(),
      const EventsPage(),
      const MembersPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "الصفحة الرئيسية",
        activeColorPrimary: Colors.deepPurple,
        inactiveColorPrimary: Colors.grey.shade600,
        textStyle: GoogleFonts.cairo(fontSize: 12),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.handshake_outlined),
        title: "انضم إلينا",
        activeColorPrimary: Colors.deepPurple,
        inactiveColorPrimary: Colors.grey.shade600,
        textStyle: GoogleFonts.cairo(fontSize: 12),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.event_available),
        title: "الفعاليات القادمة",
        activeColorPrimary: Colors.deepPurple,
        inactiveColorPrimary: Colors.grey.shade600,
        textStyle: GoogleFonts.cairo(fontSize: 12),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.info),
        title: "عن الجمعية",
        activeColorPrimary: Colors.deepPurple,
        inactiveColorPrimary: Colors.grey.shade600,
        textStyle: GoogleFonts.cairo(fontSize: 12),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('جمعية ترميز')),


      // تم استخدام Navigation Bar الموجود في مكتبة persistent_bottom_nav_bar
      // يمكن استبداله بالتقليدي
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _pages(),
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style11,
        backgroundColor: Colors.grey.shade300,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(18),
          colorBehindNavBar: Colors.white,
        ),
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardAppears: true,
        confineToSafeArea: true,
        navBarHeight: kBottomNavigationBarHeight + 6,
        padding: EdgeInsets.only(top: 8, bottom: 5),
        animationSettings: const NavBarAnimationSettings(
          navBarItemAnimation: ItemAnimationSettings(
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimationSettings(
            animateTabTransition: true,
            duration: Duration(milliseconds: 250),
            screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
          ),
        ),
      ),
    );
  }
}



// لاستخدام Bottom NavigatioBar التقليدي

/*
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        elevation: 5,
        selectedLabelStyle: GoogleFonts.cairo(fontSize: 13),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الصفحة الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake_outlined),
            label: 'انضم إلى مجتمعنا',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            label: 'الفعاليات القادمة',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'عن المجتمع'),
        ],
      ),
       */
