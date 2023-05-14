import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kick_ball/modules/dashboard/users/models/owner.dart';

import '../../../../helpers/styles_manager.dart';

class OwnersView extends StatelessWidget {
  const OwnersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 100.w),
        child: Column(
          children: [
            Text(
              "Owners",
              style:
                  getBoldTextStyle(color: Colors.black, fontSize: FontSize.s36),
            ),
            30.verticalSpace,
            Table(
              border: TableBorder.all(),
              children: [
                _buildTableRow(["Id", "Name", "Phone number"], isHeader: true),
                ...Owner.owners.map((user) => _buildTableRow([
                      user.id,
                      user.name,
                      user.phoneNum,
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
