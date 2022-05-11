import 'package:ex_shop/src/config/constans.dart';
import 'package:ex_shop/src/pages/homePage.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ex Shop',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: HomePage(),
    );
  }
}
