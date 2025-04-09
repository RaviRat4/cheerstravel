import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xfff6f7f9),
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make appBar transparent
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top), // Adjust for status bar
              child: Image.asset(
                'assets/images/cheers-logo.png',
                height: 60,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 12),
            Center(
              child: Text(
                'Where will you go next?',
                style: TextStyle(
                  color: Color(0Xff2d4554),
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTripTypeButton("Round trip", true),
                  _buildTripTypeButton("One-way", false),
                  _buildTripTypeButton("Multi-city", false),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 380,
              padding: EdgeInsets.all(12), // Padding inside the box
              decoration: BoxDecoration(
                color: Colors.white, // White background
                borderRadius: BorderRadius.circular(12), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Soft shadow
                    blurRadius: 8, // Blur intensity
                    spreadRadius: 2, // Spread area
                    offset: Offset(0, 4), // Shadow direction
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First Input Field
                  Text('From', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            hintText: "London",
                            hintStyle: TextStyle(fontSize: 30, color: Colors.black),
                            border: InputBorder.none, // Removes border
                          ),
                        ),
                      ),
                      Text('LON', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 30)),
                    ],
                  ),
                  Text('City, United Kingdom', style: TextStyle(color: Colors.black, fontSize: 16)),

                  SizedBox(height: 30), // Spacing between fields

                  // Second Input Field
                  Text('To', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            hintText: "New York",
                            hintStyle: TextStyle(fontSize: 30, color: Colors.black),
                            border: InputBorder.none, // Removes border
                          ),
                        ),
                      ),
                      Text('NYC', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87, fontSize: 30)),
                    ],
                  ),
                  Text('City, United States', style: TextStyle(color: Colors.black, fontSize: 16)),
                  SizedBox(height: 5),
                  // Add Passenger & Travel Class Section
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 380,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Add passenger', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      Row(
                        children: [
                          Icon(Icons.person, color: Colors.black54),
                          SizedBox(width: 4),
                          Text('1', style: TextStyle(fontSize: 16)),
                          SizedBox(width: 8),
                          Icon(Icons.child_care, color: Colors.black54),
                          SizedBox(width: 4),
                          Text('0', style: TextStyle(fontSize: 16)),
                          SizedBox(width: 8),
                          Icon(Icons.child_friendly, color: Colors.black54),
                          SizedBox(width: 4),
                          Text('0', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Divider(thickness: 1, color: Colors.grey[300]), // Divider Line
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Travel class', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      Text('Economy', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 380,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Departure',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.calendar_today, size: 24, color: Colors.grey),
                  Text(
                    'Return',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 380, // Match other container widths
              padding: EdgeInsets.symmetric(vertical: 16), // Adjust vertical padding
              decoration: BoxDecoration(
                color: Colors.grey[300], // Light grey background
                borderRadius: BorderRadius.circular(12), // Rounded corners
              ),
              alignment: Alignment.center,
              child: Text(
                "Search flights",
                style: TextStyle(
                  color: Colors.black87, // Dark grey text
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recent searches",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  _buildRecentSearchItem(
                    "London",
                    "Paris",
                    "29 Apr - 9 May",
                    "1 passenger",
                    "Round trip • Economy",
                    "assets/images/bkk.jpg",
                  ),
                  SizedBox(height: 12),
                  _buildRecentSearchItem(
                    "London",
                    "Delhi",
                    "26 - 29 Mar",
                    "1 passenger",
                    "Round trip • Economy",
                    "assets/images/hdy.jpg",
                  ),
                  SizedBox(height: 12),
                  _buildRecentSearchItem(
                    "London",
                    "Delhi",
                    "26 - 29 Mar",
                    "1 passenger",
                    "Round trip • Economy",
                    "assets/images/hhq.jpg",
                  ),
                  SizedBox(height: 12),
                  _buildRecentSearchItem(
                    "London",
                    "Delhi",
                    "26 - 29 Mar",
                    "1 passenger",
                    "Round trip • Economy",
                    "assets/images/utp.jpg",
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                spreadRadius: 2,
              )
            ]
        ),


        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.airplanemode_active), label: 'Buy now'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'My trips'),
            BottomNavigationBarItem(icon: Icon(Icons.access_time), label: 'Flight status'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.black54,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }


  Widget _buildTripTypeButton(String text, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.white : Color(0X00f3f4f5),
          foregroundColor: isSelected ? Colors.blueAccent : Colors.black45,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: Text(text, style: TextStyle(fontSize: 17,),),
      ),
    );
  }
}
Widget _buildRecentSearchItem(String from, String to, String dates, String passengers, String travelClass, String imagePath) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 6,
          spreadRadius: 1,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
          child: Image.asset(
            imagePath,
            width: 125,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$from  ↔  $to",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2),
              Text(dates, style: TextStyle(fontSize: 15, color: Colors.black)),
              Text(passengers, style: TextStyle(fontSize: 15, color: Colors.black)),
              Text(travelClass, style: TextStyle(fontSize: 15, color: Colors.black)),
            ],
          ),
        ),
      ],
    ),
  );
}
