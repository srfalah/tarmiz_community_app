import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarmiz_community_app/pages/main_page.dart';

void main() {
  runApp(const TarmizCommunity());
}

class TarmizCommunity extends StatelessWidget {
  const TarmizCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'جمعية ترميز',

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          centerTitle: true,
          toolbarHeight: 60,
          elevation: 0,
          titleTextStyle: GoogleFonts.cairo(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ),



      // مهم جدا جدا جدا للتطبيقات العربية
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },

      home: const MainPage(),
    );
  }
}