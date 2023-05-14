import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../helpers/styles_manager.dart';
import '../models/user.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 100.w),
        child: Column(
          children: [
            Text(
              "Users",
              style:
                  getBoldTextStyle(color: Colors.black, fontSize: FontSize.s36),
            ),
            30.verticalSpace,
            Table(
              border: TableBorder.all(),
              children: [
                _buildTableRow(
                    ["Id", "Name", "Phone number", "Number of Reservations"],
                    isHeader: true),
                ...User.users.map((user) => _buildTableRow([
                      user.id,
                      user.name,
                      user.phoneNum,
                      user.numberOfReservations
                    ]))
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildTableRow(List cells, {bool isHeader = false}) {
    final style = TextStyle(
        fontSize: FontSize.s22,
        color: Colors.black,
        fontWeight:
            isHeader ? FontWeightManager.bold : FontWeightManager.regular);
    return TableRow(
        children: cells
            .map((cell) => Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Text(
                    cell.toString(),
                    style: style,
                  ),
                ))
            .toList());
  }
}
