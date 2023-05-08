import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/helpers/styles_manager.dart';
import 'package:kick_ball/modules/playground_details/models/playground_model.dart';
import 'package:kick_ball/modules/playground_details/view/widgets/payment_options_list.dart';
import 'package:kick_ball/modules/widgets/home_app_bar.dart';

class PlayGroundDetailsView extends StatelessWidget {
  const PlayGroundDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const HomeAppBar(),
          Container(
            color: AppColors.secondary,
            padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 50.w),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Image(
                      image:
                          AssetImage(PlayGroundModel.playgrounds[0].imageUrl),
                    ),
                    40.horizontalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _buildDetailsRow('Location: ',
                            PlayGroundModel.playgrounds[0].location),
                        20.verticalSpace,
                        _buildDetailsRow('Price: ',
                            "${PlayGroundModel.playgrounds[0].hourPrice} L.E/Hour"),
                        20.verticalSpace,
                        _buildDetailsRow(
                            'Number of team players: ',
                            PlayGroundModel.playgrounds[0].playerNum
                                .toString()),
                        20.verticalSpace,
                        _buildDetailsRow(
                            'Working hours: ',
                            PlayGroundModel.playgrounds[0].workingTime
                                .toString()),
                        20.verticalSpace,
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Map Location'))
                      ],
                    )
                  ],
                ),
                100.verticalSpace,
                SizedBox(
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Pay'),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 50.w),
            child: Column(
              children: [
                Text(
                  'Payment Method',
                  style: getBoldTextStyle(color: Colors.black, fontSize: 55.sp),
                ),
                40.verticalSpace,
                const PaymentOptionsList(),
                40.verticalSpace,
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 800.w,
                    child: FormBuilder(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FormBuilderTextField(
                            style: Theme.of(context).textTheme.titleLarge,
                            name: 'card_number',
                            decoration: const InputDecoration(
                              hintText: "Card Number",
                            ),
                          ),
                          20.verticalSpace,
                          FormBuilderTextField(
                            style: Theme.of(context).textTheme.titleLarge,
                            name: 'expiry_date',
                            decoration: const InputDecoration(
                              hintText: "Expiration Date MM/YY",
                            ),
                          ),
                          20.verticalSpace,
                          FormBuilderTextField(
                            style: Theme.of(context).textTheme.titleLarge,
                            name: 'vcc',
                            decoration: const InputDecoration(
                              hintText: "VCC",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                40.verticalSpace,
                Text(
                  'Total: ${PlayGroundModel.playgrounds[0].hourPrice}',
                  style: getBoldTextStyle(color: Colors.black, fontSize: 60.sp),
                ),
                40.verticalSpace,
                SizedBox(
                  width: 200.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2F88FF),
                    ),
                    onPressed: () {},
                    child:
                        Text('Pay ${PlayGroundModel.playgrounds[0].hourPrice}'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }

  _buildDetailsRow(String title, String desc) {
    return Row(
      children: [
        Text(
          title,
          style: getBoldTextStyle(color: Colors.black, fontSize: 48.sp),
        ),
        Text(desc,
            style: getRegularTextStyle(color: Colors.black, fontSize: 40.sp))
      ],
    );
  }
}
