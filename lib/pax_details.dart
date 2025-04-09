import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: PaxDetails(),
  ));
}
class PaxDetails extends StatefulWidget {
  const PaxDetails({super.key});

  @override
  State<PaxDetails> createState() => _PaxDetailsState();
}

class _PaxDetailsState extends State<PaxDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFf6f7f9),
      appBar: AppBar(
        backgroundColor: Color(0XFFf6f7f9),
        title: Text('Choose your fare', style: TextStyle(fontSize: 25),),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        child: Column(
          children: [
            Center(
              child: Text(
                'Departure flight',
                style: TextStyle(fontSize: 18, color: Colors.black,),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(2),
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
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed:(){},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text("Economy",style: TextStyle(color: Colors.black87, fontSize: 16),),
                  ),
                  ElevatedButton(
                    onPressed:(){},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text("Premium Comfort",style: TextStyle(color: Colors.black87, fontSize: 16)),
                  ),
                  ElevatedButton(
                    onPressed:(){},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text("Business",style: TextStyle(color: Colors.black87, fontSize: 16)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            SizedBox(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Light',
                                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'GBP 198',
                                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Included per passenger", style: TextStyle(
                                  fontSize: 18,
                                ),),
                                SizedBox(height: 10,),
                                _buildIncludedItem(true, '1 hand baggage and 1 personal item (12 kg total)'),
                                SizedBox(height: 5),
                                _buildIncludedItem(false, 'No checked baggage included'),
                                SizedBox(height: 5),
                                _buildIncludedItem(false, 'Seat selection at a fee'),
                                SizedBox(height: 5),
                                _buildIncludedItem(true, 'Changeable (GBP 200 fee + possible fare difference)'),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      'Show more',
                                      style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),
                                    ), Icon(Icons.keyboard_arrow_down_sharp, color: Colors.blue),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                minimumSize: Size(double.infinity, 40),
                              ),
                              onPressed: () {},
                              child: Text('Select', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Light',
                                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'GBP 198',
                                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Included per passenger", style: TextStyle(
                                  fontSize: 18,
                                ),),
                                SizedBox(height: 10,),
                                _buildIncludedItem(true, '1 hand baggage and 1 personal item (12 kg total)'),
                                SizedBox(height: 5),
                                _buildIncludedItem(false, 'No checked baggage included'),
                                SizedBox(height: 5),
                                _buildIncludedItem(false, 'Seat selection at a fee'),
                                SizedBox(height: 5),
                                _buildIncludedItem(true, 'Changeable (GBP 200 fee + possible fare difference)'),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      'Show more',
                                      style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),
                                    ), Icon(Icons.keyboard_arrow_down_sharp, color: Colors.blue),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                minimumSize: Size(double.infinity, 40),
                              ),
                              onPressed: () {},
                              child: Text('Select', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Light',
                                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'GBP 198',
                                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Included per passenger", style: TextStyle(
                                  fontSize: 18,
                                ),),
                                SizedBox(height: 10,),
                                _buildIncludedItem(true, '1 hand baggage and 1 personal item (12 kg total)'),
                                SizedBox(height: 5),
                                _buildIncludedItem(false, 'No checked baggage included'),
                                SizedBox(height: 5),
                                _buildIncludedItem(false, 'Seat selection at a fee'),
                                SizedBox(height: 5),
                                _buildIncludedItem(true, 'Changeable (GBP 200 fee + possible fare difference)'),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      'Show more',
                                      style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),
                                    ), Icon(Icons.keyboard_arrow_down_sharp, color: Colors.blue),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                minimumSize: Size(double.infinity, 40),
                              ),
                              onPressed: () {},
                              child: Text('Select', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Light',
                                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'GBP 198',
                                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Included per passenger", style: TextStyle(
                                  fontSize: 18,
                                ),),
                                SizedBox(height: 10,),
                                _buildIncludedItem(true, '1 hand baggage and 1 personal item (12 kg total)'),
                                SizedBox(height: 5),
                                _buildIncludedItem(false, 'No checked baggage included'),
                                SizedBox(height: 5),
                                _buildIncludedItem(false, 'Seat selection at a fee'),
                                SizedBox(height: 5),
                                _buildIncludedItem(true, 'Changeable (GBP 200 fee + possible fare difference)'),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      'Show more',
                                      style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),
                                    ), Icon(Icons.keyboard_arrow_down_sharp, color: Colors.blue),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                minimumSize: Size(double.infinity, 40),
                              ),
                              onPressed: () {},
                              child: Text('Select', style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget _buildIncludedItem(bool included, String text) {
  return Row(
    children: [
      Icon(
        included ? Icons.check_circle : Icons.cancel,
        color: included ? Colors.green : Colors.grey,
      ),
      SizedBox(width: 8),
      Expanded(child: Text(text, style: TextStyle(fontSize: 14))),
    ],
  );
}
