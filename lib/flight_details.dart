import 'package:flutter/material.dart';

void main() {
  runApp(FlightDetails());
}

class FlightDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TravelBookingScreen(),
    );
  }
}

class TravelBookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 420,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage('assets/images/taj_mahal.jpg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Your Trip to", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text("Delhi", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ],
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: (){},
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.search, size: 35, color: Colors.blue,),
                                      Text(' New Search', style: TextStyle(color: Colors.blue, fontSize: 20),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 70,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 1, spreadRadius: 1),
                      ],
                    ),
                    transform: Matrix4.translationValues(0.0, -80.0, 0.0),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Outbound flight', style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      Icon(Icons.edit, color: Colors.blue, size: 24,),
                                    ],
                                  ),
                                  SizedBox(height: 2,),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Text("Web 24 Apr", style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 17,
                                    ),),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Text("06:15-22:50", style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              color: Colors.grey,
                              width: 1,
                              height: 124,
                            ),
                            SizedBox(width: 15,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.40,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Return flight', style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                      Icon(Icons.edit, color: Colors.blue, size: 24,),
                                    ],
                                  ),
                                  SizedBox(height: 2,),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Text("Web 24 Apr", style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 17,
                                    ),),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Text("06:15-22:50", style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("GBP ", style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.blue,
                                  ),),
                                  Text("1442", style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Price for all passengers", style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black87,
                                  ),),
                                  Text("View price overview", style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child:  Container(
                    transform: Matrix4.translationValues(0.0, -75.0, 0.0),
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(text: "Lock this fare for "),
                                  TextSpan(text: "GBP 28", style: TextStyle(color: Colors.blue)),
                                  TextSpan(text: " now"),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Switch(value: false, onChanged: (bool value) {}),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Text("Complete your booking later"),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Text("Lock this fare for "),
                            Text("11 hours", style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Icon(Icons.check, color: Colors.green, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(text: "Travel dates and fare are guaranteed until "),
                                    TextSpan(
                                      text: "Friday 04 April 2025 at 23:59 (local time)",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Text("This option is non-refundable.",
                            style: TextStyle(color: Colors.black87, fontSize: 14),
                          ),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    transform: Matrix4.translationValues(0.0, -75.0, 0.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.yellow[100],
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.yellow[700]!),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.info, color: Colors.amber[700]),
                            const SizedBox(width: 8),
                            const Expanded(
                              child: Text(
                                'All visitors need an Electronic Travel Authorisation (ETA) to enter the UK.',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        GestureDetector(
                          onTap: () {
                            // Add navigation or link handling here
                          },
                          child: const Text(
                            'Check for exceptions requiring other tr...',
                            style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline,fontSize: 18,),
                          ),
                        ),
                        const SizedBox(height: 4),
                        GestureDetector(
                          onTap: () {
                            // Add navigation or link handling here
                          },
                          child: const Text(
                            'Show more',
                            style: TextStyle(color: Colors.blue, fontSize: 18,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: Container(
                    transform: Matrix4.translationValues(0.0, -60.0, 0.0),
                    child: Column(
                      children: [
                        Text("*This applies to flights operated by Air France and KLM. If another airline operates your flight, please check their website.", style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                        ),),
                        SizedBox(height: 20,),
                        Text("All amounts are in GBP including taxes and surcharges, except where taxes are collected locally at the airport. A booking fee is not applicable, but a payment surcharge may apply. Prices and availability may change without notice, see KLM price display for more information.", style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey.shade300)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'View flight details and fare conditions',
              style: TextStyle(fontSize: 18, color: Colors.blueAccent, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildFlightInfo(String title, String date, String time) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          date,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          time,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

