import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubtel_coding_challenge/core/constants/colors.dart';
import 'package:hubtel_coding_challenge/features/transaction/presentation/screens/history_tab_screen.dart';
import 'package:hubtel_coding_challenge/features/transaction/presentation/widgets/button_switcher.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ButtonSwitcher(
            tabs: [
              Tab(
                child: Align(
                    alignment: Alignment.center,
                    child: Text('History', style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  )
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Transaction Summary", style: TextStyle(
                    fontSize: 14.sp,
                  ),),
                ),
              ),
            //   #D3D3D3
            ],
            unselectedLabelColor: kGrey700,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: kPrimaryWhite,
            ),
            children: const [
               HistoryTab(),
              Text("Transaction Summary")
            ],

          ),
        ),
      ),
    );
  }
}
