import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubtel_coding_challenge/core/constants/colors.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key, required this.data});
  final List<Map<String, dynamic>> data;
  // Pass in the params for user and transaction details here

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index){
        print(data[index]['image']);
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Container(
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
                  "${data[index]['date']}",
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
                          radius: 32,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "${data[index]['title']}",
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
                          color: (data[index]['status'] == 'failed')? Color(0xFFFDB0AC) : Colors.green[100],
                          borderRadius: BorderRadius.all(Radius.circular(13.r))),
                      child: Row(
                        children: [
                          // check the status and change the color
                          (data[index]['status'] == 'failed')? const Icon(Icons.close_rounded, color: Color(0xFF99231D),) : const Icon(Icons.check_circle, color: kGreen,),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text("${data[index]['status']}", style: TextStyle(
                              color: (data[index]['status'] == 'failed')? Color(0xFF99231D) : kGreen,
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
                        "${data[index]['number']}",
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
          )
        );
      },
    );
  }
}
