import 'package:flutter/material.dart';
import 'package:kick_ball/modules/home/views/widgets/booking_section.dart';
import 'package:kick_ball/modules/home/views/widgets/footer_section.dart';
import 'package:kick_ball/modules/home/views/widgets/hero_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: const <Widget>[
          HeroSection(),
          BookingSection(),
          FooterSection()
        ],
      )),
    );
  }
}
