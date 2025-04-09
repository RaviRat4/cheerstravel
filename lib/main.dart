import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'flight_details.dart';
import 'flight_details1.dart';
import 'home_screen.dart';
import 'pax_details.dart';
import 'result_page.dart';
void main() {
  runApp(const HomeWidget());
}
class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      home: FlightDetailsInner(),
    );
  }
}
