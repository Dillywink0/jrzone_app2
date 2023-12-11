import 'package:flutter/material.dart';
import '../Components/Buttons/custom_elevated_button.dart';

class FaqScreen extends StatelessWidget {
  FaqScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFortyFiveStack(context),
              Spacer(),
              SizedBox(height: 550),
              CustomElevatedButton(
                text: "Send us a Message",
                margin: EdgeInsets.only(right: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFiveStack(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [],
      ),
    );
  }
}
