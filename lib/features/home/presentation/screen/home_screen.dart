import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/core/view_model/base_view_model.dart';
import 'package:hubtel_coding_challenge/features/home/view_model/buttom_nav_view_model.dart';
import 'package:hubtel_coding_challenge/features/home/widget/button_navigation_bar.dart';
import 'package:hubtel_coding_challenge/features/transaction/presentation/screens/transaction_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _widgetOptions = const <Widget>[
    Text(""),
    Text(""),
    TransactionScreen(),
    Text(""),
  ];


  void onTap(int index) async{
    final bottomNavProvider = context.read<BottomNavViewModel>();

    bottomNavProvider.selectNavTab = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: BaseView<BottomNavViewModel>(
            builder: (context, bottomNavProvider, child) => _widgetOptions.elementAt(bottomNavProvider.getSelectedNavTab)
        ),
      ),
      bottomNavigationBar: BaseView<BottomNavViewModel>(
        builder: (context, bottomNavProvider, child) => HomeBottomNavigationBar(
          currentIndex: bottomNavProvider.getSelectedNavTab,
          onTap: onTap,
        ),
      ),
    );
  }
}