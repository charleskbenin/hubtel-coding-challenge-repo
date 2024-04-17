import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubtel_coding_challenge/core/constants/common.dart';

import '../../../../../core/constants/colors.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    super.key,
    this.currentIndex = 0,
    this.onTap,
  });

  final int currentIndex;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xFFF8F8F8))),
        ),
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            backgroundColor: kPrimaryWhite,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: onTap,
            iconSize: 24.0,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryBlack,
            ),

            // unselectedLabelStyle: kMediumFontStyle.copyWith(
            //   fontSize: AppThemeUtil.fontSize(12.0),
            //   color: AppThemeUtil.getThemeColor(kGrey500),
            //   height: AppThemeUtil.getLineHeight(18.0, 12),
            //   letterSpacing: AppThemeUtil.getLetterSpacing(-0.13),
            // ),
            selectedItemColor: kPrimaryBlack,
            unselectedItemColor: kGrey,
            items: [
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: Color(0xFFCCF3EF),
                  child: SvgPicture.asset(
                    'assets/Home Icon.svg',
                    fit: BoxFit.cover,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/MoMo.svg',
                  fit: BoxFit.cover,
                  height: 24.h,
                  width: 24.w,
                ),
                label: 'Send',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/doc.svg',
                  fit: BoxFit.cover,
                  height: 24.h,
                  width: 24.w,
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/Schedule.svg',
                  fit: BoxFit.cover,
                  height: 24.h,
                  width: 24.w,
                ),
                label: 'Scheduled',
              ),
            ],
          ),
        )
    );
  }
}
