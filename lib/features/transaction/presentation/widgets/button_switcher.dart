import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';

class ButtonSwitcher extends StatefulWidget {
  const ButtonSwitcher({
    super.key,
    required this.children,
    required this.tabs,
    required this.indicator,
    this.labelColor,
    this.unselectedLabelColor,
    this.isShopTabs = false,
  });
  final List<Widget> children;
  final List<Widget> tabs;
  final Decoration indicator;
  final Color? labelColor;
  final Color? unselectedLabelColor;
  final bool isShopTabs;

  @override
  State<ButtonSwitcher> createState() => _ButtonSwitcherState();
}

class _ButtonSwitcherState extends State<ButtonSwitcher> with TickerProviderStateMixin{
  late TabController _controller;


  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h,
          decoration: const BoxDecoration(
            borderRadius:  BorderRadius.all(Radius.circular(6)),
            color: kGrey
          ),
          padding: const EdgeInsets.all(4),
          width: double.infinity,
          child: Theme(
            data: ThemeData(
              highlightColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
            ),
            child: TabBar(
              controller: _controller,
              unselectedLabelColor: widget.unselectedLabelColor?? Colors.grey[300],
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: widget.labelColor ?? kPrimaryBlack,
              dividerColor: Colors.transparent,
              indicator: widget.indicator,
              tabs: widget.tabs,
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        const Divider(height: 6, color: kGrey,),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: widget.children,
          ),
        ),
      ],
    );

  }
}