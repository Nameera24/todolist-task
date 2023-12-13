import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project1/screens/login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController name= TextEditingController();
TextEditingController confirmPass = TextEditingController();


class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 23, 47, 184),
                    Color(0xff281537),
                  ]),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 60.0, left: 22),
                  child: Text(
                    'Create Your\nAccount',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                    color: Colors.white,
                  ),
                  height: double.infinity,
                  width: double.infinity,
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: name,
                          decoration: InputDecoration(
                             
                              label: Text('Name',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color.fromARGB(255, 26, 4, 104),
                              ),)
                          ),
                        ),
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
                          controller: password,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                              label: Text('Password',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:Color.fromARGB(255, 26, 4, 104),
                              ),)
                          ),
                        ),
                        TextField(
                          controller: confirmPass,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                              label: Text('Confirm Password',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                 color:Color.fromARGB(255, 26, 4, 104),
                              ),)
                          ),
                        ),
          
                     
                       SizedBox(height: 40,),
                        GestureDetector(
                          onTap: ()async{
                            FirebaseAuth auth = FirebaseAuth.instance;
                         UserCredential userCredential = await   auth.createUserWithEmailAndPassword(email: email.text, password: password.text);
                         if(userCredential != null){
                          Fluttertoast.showToast(msg: "Successfull");
                         }else{
                          Fluttertoast.showToast(msg: 'Failed');
                         }
                          
                          
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
                            child:  Center(child: Text('SIGN IN',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white
                            ),),),
                          ),
                        ),
                         SizedBox(height: 10,),
                         Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Already  have account?",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                  fontSize: 16
                              ),),
                         TextButton(onPressed:(){
                           Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                         }

                        ,child:Text("Log In",style: TextStyle(///done login page
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