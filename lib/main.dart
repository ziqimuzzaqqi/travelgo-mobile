import 'package:flutter/material.dart';
import 'package:travelgo_mobile/navigation/bottom_bar.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/order_screen.dart';
import 'screens/profile_setting_screen.dart';
import 'navigation/bottom_bar.dart';

void main() {
  runApp(TravelgoApp());
}

class TravelgoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travelgo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
        '/detail': (context) => DetailScreen(carId: 1),
        '/order': (context) => OrderScreen(),
        '/profile': (context) => ProfileSettingsScreen(),
      },
    );
  }
}


class Travelgo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TravelGo Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomBar(),
    );
  }
}
