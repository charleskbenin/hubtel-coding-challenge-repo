
import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/features/home/presentation/screen/home_screen.dart';
import 'package:hubtel_coding_challenge/features/transaction/presentation/screens/transaction_screen.dart';

import '../constants/colors.dart';
import 'app_route.dart';

class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoute.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case AppRoute.transaction:
        return MaterialPageRoute(builder: (context) => const TransactionScreen());


      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return const Scaffold(
        backgroundColor: kPrimaryWhite,
        body: Center(
          child: Text('Page Not Found!', style: TextStyle(fontSize: 16)),
        ),
      );
    });
  }

  static Future<Object?> pushNamed(BuildContext context, String routeName,
      {Object? arguments}) =>
      Navigator.pushNamed(context, routeName, arguments: arguments);

  static Future<Object?> pushReplacementNamed(
      BuildContext context, String routeName,
      {Object? arguments, Object? result}) =>
      Navigator.pushReplacementNamed(context, routeName,
          arguments: arguments, result: result);

  static Future<Object?> pushNamedAndRemoveUntil(
      BuildContext context,
      String routeName,
      bool Function(Route<dynamic>) predicate, {
        Object? arguments,
      }) =>
      Navigator.pushNamedAndRemoveUntil(
        context,
        routeName,
        predicate,
        arguments: arguments,
      );

  static void pop(BuildContext context, [Object? result]) =>
      Navigator.pop(context, result);

  static NavigatorState of(BuildContext context, {bool rootNavigator = false}) =>
      Navigator.of(context, rootNavigator: rootNavigator);

  static Future<Object?> popAndPushNamed(
      BuildContext context,
      String routeName, {
        Object? arguments,
        Object? result,
      }) =>
      Navigator.popAndPushNamed(
        context,
        routeName,
        arguments: arguments,
        result: result,
      );
}
