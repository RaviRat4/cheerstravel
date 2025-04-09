import 'package:flutter/material.dart';

void main() {
  runApp(const FlightDetailsInner());
}

class FlightDetailsInner extends StatelessWidget {
  const FlightDetailsInner({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TravelBookingScreen(),
    );
  }
}

class TravelBookingScreen extends StatefulWidget {
  const TravelBookingScreen({super.key});

  @override
  State<TravelBookingScreen> createState() => _TravelBookingScreenState();
}

class _TravelBookingScreenState extends State<TravelBookingScreen> {
  void _showModal() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height * 90.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                  children: [
                    Text("Passenger Info", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Close"),
                    ),
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0Xfff6f7f9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/taj_mahal.jpg'),
                      fit: BoxFit.cover,
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
                                Text("Passenger Details", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 60,),
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
                        Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                        ),
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
                Transform.translate(
                  offset: const Offset(0, -80),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: _showModal,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, // no background
                          elevation: 0,                        // no shadow
                          shadowColor: Colors.transparent,     // just to be extra clear
                          padding: EdgeInsets.zero,            // remove extra padding if needed
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.account_circle_outlined, color: Color(0XFF002c4a), size: 30),
                                SizedBox(width: 8),
                                Text(
                                  'Passenger 1 (adult)',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0XFF002c4a),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(Icons.info, color: Color(0XFFfecb00), size: 30,),
                          ],
                        ),
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        )
    );
  }
}
