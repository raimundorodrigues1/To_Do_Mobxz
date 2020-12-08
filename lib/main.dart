import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todomobx/screens/splash.dart';
import 'package:todomobx/stores/login_store.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<LoginStore>(
        create: (_) => LoginStore(),
        child: MaterialApp(
          title: 'MobX Tutorial',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              fontFamily: 'Georgia',
              primaryColor: Colors.indigo,
              cursorColor: Colors.indigo,
              scaffoldBackgroundColor: Colors.indigo),
          home: Splash(),
        ));
  }
}
