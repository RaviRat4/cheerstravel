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
  final _formKey = GlobalKey<FormState>();
  String? _selectedTitle;
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  String? _selectedCountryCode = 'United Kingdom (+44)';

  bool _subscribeToOffers = false;
  bool _isLoyaltyMember = false;
  bool _hasBluebiz = false;
  bool _hasContract = false;

  final List<String> _titles = ['Mr', 'Ms', 'Mrs', 'Dr'];
  final List<String> _countryCodes = [
    'United Kingdom (+44)',
    'United States (+1)',
    'India (+91)',
    'Germany (+49)',
    'France (+33)'
  ];

  void _showModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 1,
          minChildSize: 0.5,
          maxChildSize: 1,
          builder: (_, controller) => SingleChildScrollView(
            controller: controller,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_ios_new),
                      padding: EdgeInsets.zero,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    Column(
                      children: [
                        Text("Passenger details", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87)),
                        Text("Passenger 1 (adult)", style: TextStyle(fontSize: 16, color: Colors.black54)),
                      ],
                    ),
                    SizedBox(width: 77),
                  ],
                ),
                const SizedBox(height: 25),
                /// All your form content remains unchanged here.
                /// Move everything inside the `Form` from your original code and paste it below.
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.blue.shade100),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.info, color: Colors.blue),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Make sure your details are exactly the same as on the identity document you present at the airport.',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Title*',
                          border: OutlineInputBorder(),
                        ),
                        value: _selectedTitle,
                        onChanged: (value) {
                          setState(() {
                            _selectedTitle = value;
                          });
                        },
                        items: _titles.map((title) {
                          return DropdownMenuItem(
                            value: title,
                            child: Text(title),
                          );
                        }).toList(),
                        validator: (value) => value == null ? 'Please select a title' : null,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _firstNameController,
                        decoration: InputDecoration(
                          labelText: 'First name*',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) =>
                        value == null || value.isEmpty ? 'Enter first name' : null,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _lastNameController,
                        decoration: InputDecoration(
                          labelText: 'Last name*',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) =>
                        value == null || value.isEmpty ? 'Enter last name' : null,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'E-mail address*',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) =>
                        value == null || !value.contains('@') ? 'Enter a valid email' : null,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Your ticket will be sent to this e-mail address.',
                        style: TextStyle(fontSize: 13, color: Colors.black54),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: _subscribeToOffers,
                            onChanged: (bool? value) {
                              setState(() {
                                _subscribeToOffers = value ?? false;
                              });
                            },
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black87),
                                children: [
                                  TextSpan(
                                    text:
                                    'Would you like to be the first to receive personalised e-mails and special offers from us? ',
                                  ),
                                  TextSpan(
                                    text: 'Read more',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Country code*',
                          border: OutlineInputBorder(),
                        ),
                        value: _selectedCountryCode,
                        onChanged: (value) {
                          setState(() {
                            _selectedCountryCode = value;
                          });
                        },
                        items: _countryCodes.map((code) {
                          return DropdownMenuItem(
                            value: code,
                            child: Text(code),
                          );
                        }).toList(),
                        validator: (value) => value == null ? 'Please select a country code' : null,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _phoneController,
                        decoration: InputDecoration(
                          labelText: 'Telephone number 1*',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.phone,
                        validator: (value) =>
                        value == null || value.isEmpty ? 'Enter a phone number' : null,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Loyalty programme',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      SizedBox(height: 14,),
                      CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text('I am a member of a frequent flyer or loyalty programme'),
                        value: _isLoyaltyMember,
                        onChanged: (value) {
                          setState(() {
                            _isLoyaltyMember = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text('Bluebiz number'),
                        value: _hasBluebiz,
                        onChanged: (value) {
                          setState(() {
                            _hasBluebiz = value ?? false;
                          });
                        },
                      ),
                      CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text('Contract name'),
                        value: _hasContract,
                        onChanged: (value) {
                          setState(() {
                            _hasContract = value ?? false;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
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
                      const SizedBox(height: 50),// Extra padding for safe scroll space
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
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
