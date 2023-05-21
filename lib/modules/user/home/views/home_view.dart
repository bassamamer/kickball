import 'package:flutter/material.dart';
import 'package:kick_ball/modules/user/home/views/widgets/footer_section.dart';
import 'package:kick_ball/modules/user/home/views/widgets/hero_section.dart';
import 'package:kick_ball/modules/user/home/views/widgets/playgrounds_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: const <Widget>[
          HeroSection(),
          PlaygroundsSection(),
          FooterSection()
        ],
      )),
    );
  }
}
