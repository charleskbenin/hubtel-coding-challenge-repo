import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubtel_coding_challenge/core/constants/colors.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});
  // Pass in the params for user and transaction details here

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          border: Border.all(
            color: kGrey,
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "May 24, 2022",
            style: TextStyle(
                fontSize: 12.sp,
                color: kGrey700
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    "Emmanuel Rockson\nKwabena Uncle Ebo",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: kPrimaryBlack
                    ),
                  ) // we can get a helper fun to handle the brake eg:\n
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                    color: kGrey,
                    borderRadius: BorderRadius.all(Radius.circular(13.r))),
                child: Row(
                  children: [
                    const Icon(Icons.check_circle, color: kGreen,),
                    SizedBox(
                      width: 4.w,
                    ),
                    const Text("Successful", style: TextStyle(
                        color: kGreen,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 80.w,
              top: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "024 123 4567",
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: kGrey700
                  ),
                ),
                Text("GHS 500", style: TextStyle(
                    fontSize: 14.sp,
                    color: kPrimaryBlack,
                    fontWeight: FontWeight.w600
                ),),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          const Divider(
            color: kGrey,
          ),
          SizedBox(
            height: 21.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    "Personal • Cool your heart wai",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: kPrimaryBlack
                    ),
                  )
                ],
              ),
              const Icon(Icons.star, color: kStar,)
            ],
          )
        ],
      ),
    );
  }
}
