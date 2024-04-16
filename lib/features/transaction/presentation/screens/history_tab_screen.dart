import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubtel_coding_challenge/core/constants/colors.dart';

import '../../../../core/constants/common.dart';
import '../widgets/history_card.dart';

class HistoryTab extends StatefulWidget {
  const HistoryTab({super.key});

  @override
  State<HistoryTab> createState() => _HistoryTabState();
}

class _HistoryTabState extends State<HistoryTab> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate loading for 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 17.h,
          ),
          // Loader
          Visibility(
            visible: _isLoading,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          Visibility(
            visible: !_isLoading,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded( //This will take more of the screen than the other widget in the row
                      child: Container(
                        width: double.infinity,
                        height: 45.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            color: kGrey),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 12.h),
                              border: InputBorder.none,
                              prefixIcon: const Icon(CupertinoIcons.search)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    SvgPicture.asset(
                      '$kSvgPath/Group 38142.svg',
                      fit: BoxFit.cover,
                      height: 40.h,
                      width: 40.w,
                    )
                  ],
                ),
                SizedBox(
                  height: 31.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                  decoration: BoxDecoration(
                      color: kGrey,
                      borderRadius: BorderRadius.all(Radius.circular(13.r))),
                  child: const Text("May 24, 2022"),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.only(bottom: 16.h),
                      child: const HistoryCard(),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
