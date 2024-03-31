import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}
class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:
      {
        HomePage.id : (context) => HomePage(),
        UpadateProdyctScreen.id :(context) => UpadateProdyctScreen(),

      },
      initialRoute: HomePage.id,
      debugShowCheckedModeBanner: false,
    );
  }
}