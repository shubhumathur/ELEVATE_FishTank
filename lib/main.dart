import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bottom_nav_bar.dart';
void main() {
  runApp(
    MaterialApp(
    initialRoute: '/',
    routes: {
       '/': (context) => MyApp(),
       '/second': (context) => SecondScreen(),
       '/third': (context) => ThirdScreen(),
          },
    ),
    
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffA6E1FA),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset("assests/4_30.svg", width: 16, height: 12),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assests/signal.svg", width: 20, height: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assests/wifi.svg", width: 20, height: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assests/battery-three-quarters.svg", width: 20, height: 20),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assests/undraw_showing_support_re_5f2v 1.svg", width: 200, height: 120, fit: BoxFit.scaleDown),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const Text(
                  "Figma ipsum component variant main layer. Connection style invite select fill. Move pencil bold community invite effect.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
 onPressed: () {
    Navigator.pushNamed(context, '/second');
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0E6BA8)),
  ),
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
    child: Text(
      "Let's Get Started",
      style: TextStyle(fontSize: 18),
    ),
  ),
),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor: Color(0xffA6E1FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assests/4_30.svg", width: 16, height: 12),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assests/signal.svg", width: 20, height: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assests/wifi.svg", width: 20, height: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assests/battery-three-quarters.svg", width: 20, height: 20),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assests/undraw_showing_support_re_5f2v 1.svg", width: 200, height: 120, fit: BoxFit.scaleDown),
            SizedBox(height: 20),
            /*Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                "Login Page",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),*/
            

            Container(
               height:73,
               color: Color(0xffA6E1FA),),
            Expanded(

            child:Container(
            
            height: MediaQuery.of(context).size.height / 2, // Half of the screen height
            width: double.infinity, // Full width of the screen
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset("assests/Handle.svg", width: 1, height: 1,fit: BoxFit.scaleDown),
                SizedBox(height: 2),
                Text(
                  'Login',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  'Please select your preferred method to',
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'continue logging into your account',
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                 textAlign: TextAlign.center,
                ),
                
                SizedBox(height: 30.0),
                OutlinedButton(
                  onPressed: () {
    Navigator.pushNamed(context, '/third');
  },
  
  style: OutlinedButton.styleFrom(
    primary: Colors.black, // Text color
    side: BorderSide(color: Color(0xffA6E1FA)), // Border color and width
    backgroundColor: Colors.white, // Background color
    minimumSize: Size(250, 60), 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Curvature of the border
    ),// Width and height of the button
  ),
  child: Text('Continue with Email',style: TextStyle( fontSize: 16),),
),
               /* ElevatedButton(
                  onPressed: () {},

                  child: Text('Continue with Email'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff0E6BA8),
                    minimumSize: Size(double.infinity, 50.0),
                  ),
                ),*/

                SizedBox(height: 6.0),
OutlinedButton(
  onPressed: () {
    Navigator.pushNamed(context, '/third');
  },
  style: OutlinedButton.styleFrom(
    side: BorderSide(color: Colors.blue), // Border color and width
    backgroundColor: Colors.blue, // Background color
    minimumSize: Size(250, 60), // Width and height of the button
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Curvature of the border
    ),
  ),
  child: Text('Continue with Phone', style: TextStyle(color: Colors.white, fontSize: 16),
),
),


               /* ElevatedButton(
                  onPressed: () {},
                  child: Text('Continue with Phone'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: Size(double.infinity, 50.0),
                  ),
                ),*/
                SizedBox(height: 6.0),
                Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    OutlinedButton(
      onPressed: () {
    Navigator.pushNamed(context, '/third');
  },
      style: OutlinedButton.styleFrom(
        primary: Colors.black, // Text color
        side: BorderSide(color: Color(0xffA6E1FA)), // Border color and width
        backgroundColor: Colors.white, // Background color
        minimumSize: Size(120, 50), // Width and height of the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Curvature of the border
        ),
      ),
      child: SvgPicture.asset("assests/Group 45800_google.svg", width: 27, height: 27),
    ),
    SizedBox(width: 10),
    OutlinedButton(
    onPressed: () {
    Navigator.pushNamed(context, '/third');
  },
      style: OutlinedButton.styleFrom(
        //primary: Colors.black, // Text color
        side: BorderSide(color: Color(0xffA6E1FA)), // Border color and width
        //backgroundColor: Colors.white, // Background color
        minimumSize: Size(120, 50), // Width and height of the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Curvature of the border
        ),
      ),
      child: SvgPicture.asset("assests/Vector_fb.svg", width: 27, height: 27),
    ),
  ],
),

                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Text('G'),
                  ],
                ),
                SizedBox(height: 10.0),
                Text(
                  'If you are creating a new account,',
                  style: TextStyle(fontSize: 12.0, color: Colors.grey[700]),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Terms & Conditions and Privacy Policy will apply.',
                  style: TextStyle(fontSize: 12.0, color: Colors.grey[700]),
                 textAlign: TextAlign.center,
                ),
              ],
            ),
            ),

            )
             

           /* Container(
              height: MediaQuery.of(context).size.height/1, // Half of the screen height
            width: double.infinity, // Full width of the screen
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'If you are creating a new account,\nTerms & Conditions and Privacy Policy will apply.',
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
            ),
*/
            


          ],







        ),
      ),
    );
  }
}





/*
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}
*/
/*
class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
    
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset("assests/4_30.svg", width: 16, height: 12),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assests/signal.svg", width: 20, height: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assests/wifi.svg", width: 20, height: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assests/battery-three-quarters.svg", width: 20, height: 20),
            ),
          ],
        ),

        



        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        primary: Colors.black, // Text color
        side: BorderSide(color: Color(0xffA6E1FA)), // Border color and width
        backgroundColor: Colors.white, // Background color
        minimumSize: Size(120, 50), // Width and height of the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Curvature of the border
        ),
      ),
      child: SvgPicture.asset("assests/Group 45800_google.svg", width: 27, height: 27),
    ),
    SizedBox(width: 10),
    OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        //primary: Colors.black, // Text color
        side: BorderSide(color: Color(0xffA6E1FA)), // Border color and width
        //backgroundColor: Colors.white, // Background color
        minimumSize: Size(120, 50), // Width and height of the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Curvature of the border
        ),
      ),
      child: SvgPicture.asset("assests/Vector_fb.svg", width: 27, height: 27),
    ),
  ],
),
    
            ],
          ),
          ),
          ),
  },
},
*/



class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("assests/4_30.svg", width: 16, height: 12),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assests/signal.svg", width: 20, height: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assests/wifi.svg", width: 20, height: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assests/battery-three-quarters.svg", width: 20, height: 20),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your content here
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}