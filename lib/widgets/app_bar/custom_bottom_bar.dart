import 'package:flutter/material.dart';
import '../../core/utils/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    // BottomMenuModel(
    //   icon: ImageConstant.imgHome,
    //   activeIcon: ImageConstant.imgHome,
    //    type: BottomBarEnum.Home,
    //  ),
    //  BottomMenuModel(
    //   icon: ImageConstant.imgWallet,
    //   activeIcon: ImageConstant.imgWallet,
    //   type: BottomBarEnum.Wallet,
    // ),
    // BottomMenuModel(
    //  icon: ImageConstant.imgAnalysis,
    //   activeIcon: ImageConstant.imgAnalysis,
    //    type: BottomBarEnum.Analysis,
    //  ),
    //  BottomMenuModel(
    //   icon: ImageConstant.imgUser,
    //   activeIcon: ImageConstant.imgUser,
    //    type: BottomBarEnum.User,
    //  )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 24,
              width: 24,
              color: appTheme.blueA40001,
            ),
            activeIcon: Container(
              decoration: AppDecoration.outlineIndigoA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 19,
                width: 19,
                color: appTheme.whiteA700,
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Wallet,
  Analysis,
  User,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
