import 'package:flutter/material.dart';
import 'package:project1/screens/signup.dart';
import 'package:project1/screens/taskScreen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
TextEditingController email = TextEditingController();
TextEditingController _password = TextEditingController();
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
                children: [
          Container(
             height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
               Color.fromARGB(255, 23, 47, 184),
                    Color(0xff281537),
              ]),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 60.0, left: 22),
              child: Text(
                'Log in!',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child:  Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     TextField(
controller: email,
                      decoration: InputDecoration(
                      
                        label: Text('Email',style: TextStyle(
                          fontWeight: FontWeight.bold,
                           color:Color.fromARGB(255, 26, 4, 104),
                        ),)
                      ),
                    ),
                     TextField(
                      controller: _password,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                          label: Text('Password',style: TextStyle(
                            fontWeight: FontWeight.bold,
                           color:Color.fromARGB(255, 26, 4, 104),
                          ),)
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text('Forgot Password?',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color(0xff281537),
                      ),),
                    ),
                     SizedBox(height: 70,),
                    GestureDetector(
                      onTap: () {
                          Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TaskScreen()));
                      },
                      child: Container(
                        height: 55,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 23, 47, 184),
                      Color(0xff281537),
                            ]
                          ),
                        ),
                        child:  Center(child: Text('Log IN',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white
                        ),),),
                      ),
                    ),
                    const SizedBox(height: 150,),
                     Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Don't have account?",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                          ),),
                          TextButton(onPressed:(){
                           Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                         }

                        ,child:Text("Sign UP",style: TextStyle(///done login page
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black
                              ),),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
                ],
              ),
        ));
  }
}