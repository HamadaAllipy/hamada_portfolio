import 'package:flutter/material.dart';
import 'package:amr_portfolio/app_theme.dart';
import 'package:amr_portfolio/presentation/pages/home/home_page.dart';
import 'package:amr_portfolio/presentation/routes/routes.dart';
import 'package:amr_portfolio/values/values.dart';
import 'package:layout/layout.dart';

import 'configure_web.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   configureApp();
  runApp(Starter());
}

class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp(
        title: StringConst.APP_TITLE,
        theme: AppTheme.lightThemeData,
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.homePageRoute,
        onGenerateRoute: RouteConfiguration.onGenerateRoute,
      ),
    );
  }
}


