import 'package:flutter/material.dart';
import 'package:kick_ball/modules/dashboard/home/view/widgets/admin_pages_widget.dart';
import 'package:kick_ball/modules/dashboard/home/view/widgets/statistics_widget.dart';

import '../../../widgets/admin_home_app_bar.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          AdminHomeAppBar(),
          StatisticsWidget(),
          AdminPagesWidget()
        ],
      ),
    ));
  }
}
