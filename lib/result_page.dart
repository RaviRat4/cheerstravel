import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FlightSelectionScreen(),
  ));
}

class FlightSelectionScreen extends StatefulWidget {
  @override
  _FlightSelectionScreenState createState() => _FlightSelectionScreenState();
}

class _FlightSelectionScreenState extends State<FlightSelectionScreen> {
  int selectedIndex = 1; // Default selected index

  final List<Map<String, String>> flights = [
    {'date': 'Thu 03 Apr', 'price': 'GBP 427'},
    {'date': 'Fri 04 Apr', 'price': 'GBP 589'},
    {'date': 'Sat 05 Apr', 'price': 'GBP 504'},
    {'date': 'Sat 05 Apr', 'price': 'GBP 504'},
    {'date': 'Sat 05 Apr', 'price': 'GBP 504'},
    {'date': 'Sat 05 Apr', 'price': 'GBP 504'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFf6f7f9),
      appBar: AppBar(
        backgroundColor: Color(0XFFf6f7f9),
        title: Text('Departure flight', style: TextStyle(fontSize: 25),),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'London → Delhi',
                  style: TextStyle(fontSize: 18, color: Colors.black,),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(flights.length, (index) {
                    bool isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 22),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.blue[100] : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: isSelected ? Colors.blue : Colors.grey.shade300,
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              flights[index]['date']!,
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            SizedBox(height: 5),
                            Text(
                              flights[index]['price']!,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sort by: ',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(width: 5), // Adds spacing between texts
                    Text(
                      'Departure time',
                      style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    child: Text('Price for all passengers', style: TextStyle(fontSize: 18),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                color: Color(0XFFe0f7ff),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.info, color: Colors.blue, size: 25,), Text(" CO2 emissions",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 8,),
                      Container(
                        child: Column(
                          children: [
                            Text("Average CO2 emissions for flights with the least amount of stops in Economy Class: 526 kg.",
                              style: TextStyle(fontSize: 16,),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Align(
                        alignment: Alignment.centerLeft, // Aligns to the left
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 100,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Center(
                              child: Text(
                                'Learn more',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Text('Connecting flights (13)', style: TextStyle(
                  color: Color(0XFF326182), fontSize: 22,
                ),),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 2),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'AIRFRANCE ',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.flight, color: Colors.red, size: 20),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('06:15', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        Column(
                          children: [
                            Text('12h05', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            Text('Total travel time', style: TextStyle(color: Colors.black87)),
                          ],
                        ),
                        Text('22:50', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('LHR', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('---- CDG ----', style: TextStyle(fontSize: 16, color: Colors.black87)),
                        Text('DEL', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          width: 230,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('GBP 1,083', style: TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(12),
                            ),
                            child: Text('Details', style: TextStyle(fontSize: 18, color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 2),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'AIRFRANCE ',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.flight, color: Colors.red, size: 20),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('06:15', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        Column(
                          children: [
                            Text('12h05', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            Text('Total travel time', style: TextStyle(color: Colors.black87)),
                          ],
                        ),
                        Text('22:50', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('LHR', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('---- CDG ----', style: TextStyle(fontSize: 16, color: Colors.black87)),
                        Text('DEL', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          width: 230,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('GBP 1,083', style: TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(12),
                            ),
                            child: Text('Details', style: TextStyle(fontSize: 18, color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 2),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'AIRFRANCE ',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.flight, color: Colors.red, size: 20),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('06:15', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        Column(
                          children: [
                            Text('12h05', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            Text('Total travel time', style: TextStyle(color: Colors.black87)),
                          ],
                        ),
                        Text('22:50', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('LHR', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('---- CDG ----', style: TextStyle(fontSize: 16, color: Colors.black87)),
                        Text('DEL', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          width: 230,
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('GBP 1,083', style: TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(12),
                            ),
                            child: Text('Details', style: TextStyle(fontSize: 18, color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      )
    );
  }
}