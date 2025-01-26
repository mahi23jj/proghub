
import 'package:flutter/material.dart';
import 'package:travel/drawer.dart';
import 'package:travel/page.dart';


class sign extends StatefulWidget {
  sign({super.key});

  @override
  State<sign> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<sign> {
  Color g = Color.fromRGBO(214, 243, 87, 1);
  Color w = Colors.white;
  Color box = const Color.fromARGB(255, 41, 40, 40);
  Color bo = Color.fromARGB(255, 65, 64, 64);
  TextEditingController lapcontroller = TextEditingController();
  TextEditingController laps = TextEditingController();
  String error='';

  // Future<void> _signUp(String email, String password) async {
  //   try {
  //     await _auth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => MyHomePage(),
  //         ));
  //     error='User registered successfully';
  //   } catch (e) {
  //   error=='Error registering user: $e';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //fullBackground image

      

      body: Container(
        decoration: BoxDecoration( image: DecorationImage(
                  image: AssetImage('asset/2.jpg'),
                   fit: BoxFit.cover,
                   colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
                  
                  ),),
        child: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 70, vertical: 200),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 80, horizontal: 35),
            // color: g,
             decoration: BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Colors.white.withOpacity(0.5), // Semi-transparent white
      Color(0xFFE0E0E0).withOpacity(0.5), // Semi-transparent light gray
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  ),
),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: lapcontroller,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: laps,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 4,),
                Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){

                      },
                      child: Text('Forgot Password?',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w200))),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyHomePage()));
                      },
                      child:
                          Text('Login', style: TextStyle(color: Colors.blue))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextButton(
                    onPressed: () {
                    
                    },
                    child: Text(
                      'Create an account',
                      style: TextStyle(color: Colors.blue),
                    )),
                   if (error.isNotEmpty)
              Text(
                error,
                style: TextStyle(color: Colors.red),
              ),  
              ],
            ),
          ),
        )),
      ),
    );
  }
}
