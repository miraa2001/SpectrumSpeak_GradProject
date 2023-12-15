import 'package:flutter/material.dart';

import '../constants/Colors.dart';
import 'SignUp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  bool _passwordVisible=false;
  bool _obscureText=true;
  @override
  void initState() {
    _passwordVisible = false;
    _obscureText = true;
  }
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  void _clearP()
  {
    setState((){
      _passwordController.clear();
    });
  }
  void _clearE()
  {
    setState((){
      _emailController.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: 210,
                  margin: EdgeInsets.only(left:8,top: 45),
                  child:Image.asset('images/spectrumspeak.png', width: 270.0, height: 270.0)
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 35),
                  child: Text('Login', style: TextStyle(color: Color(0xff0E5F88),fontSize: 28,fontFamily: 'IstokWeb',fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Wrap(
                      spacing:0,
                      children: [
                        // Container(
                        //   alignment: Alignment.center,
                          Image.asset('images/emaill.png'),
                        // ),
                        Container(
                            margin: EdgeInsets.only(bottom: 15),
                            width: 260,
                            height: 50,
                            child: TextField(
                            controller: _emailController,
                            style: TextStyle(color: ktextfieldColor),
                            decoration: InputDecoration(
                                        filled: true,
                                        fillColor: tdTextFieldBlue,
                                        border:OutlineInputBorder(borderRadius: BorderRadius.only( topRight: Radius.circular(15.0),bottomRight: Radius.circular(15.0)),borderSide: BorderSide.none),
                                        hintText: 'Email Address',
                                        hintStyle: TextStyle(fontSize: 15.0,color: tdPlaceHolder),

                                      ),

                          )
                        ),
                    ]
                )
                ),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10,bottom: 35),
                    child: Wrap(
                        spacing:0,
                        children: [
                          // Container(
                          //   alignment: Alignment.center,
                          Image.asset('images/lock.png'),
                          // ),
                          Container(
                              width: 260,
                              height: 50,
                              alignment: Alignment.center,
                              child: TextField(
                              controller: _passwordController,
                              obscureText: _obscureText,
                              style: TextStyle(color: ktextfieldColor),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: tdTextFieldBlue,
                                  border:OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0),),borderSide: BorderSide.none),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(fontSize: 15.0,color: tdPlaceHolder),
                                  suffixIcon: IconButton(
                                              icon: Icon(
                                                // Based on passwordVisible state choose the icon
                                                _passwordVisible
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                color: Theme.of(context).primaryColorDark,
                                                ),
                                                onPressed: () {
                                                setState(() {
                                                  _passwordVisible = !_passwordVisible;
                                                  _toggle();
                                                });
                                              },
                                          ),
                              )
                          )),
                        ]
                    )
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Log in',style: TextStyle(color: ktextColor,fontFamily: 'Inter',fontSize: 19,fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(tdPurple),
                            fixedSize: MaterialStateProperty.all(Size(315, 50)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                    ),// specify width, height
                  ),

                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Text('Forgot Password?', style: TextStyle(color: ktextColor, decoration: TextDecoration.underline,fontSize: 15,fontFamily: 'Poppins'))
                ),
                Row(
                  children: [
                    Container(
                        alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(left: 31,top:20,right:20),
                      width:120,
                      child: Text(' ', style: TextStyle(color:Colors.deepOrange)),
                      decoration: BoxDecoration(
                                   border: Border(bottom: BorderSide(color: tdPurple)),
                                  )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 33),
                      child: Text('OR', style: TextStyle(color: ktextColor,fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                    Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(left: 20,top:20),
                        width:120,
                        child: Text(' ', style: TextStyle(color:Colors.deepOrange)),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: tdPurple)),
                        )
                    )
                  ]
                ),
                Container(margin: EdgeInsets.only(top: 40,),child:
                ElevatedButton(
                  onPressed:(){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));},
                  child: Text('Sign Up',style: TextStyle(color: ktextColor,fontFamily: 'Inter',fontSize: 19,fontWeight: FontWeight.bold)),

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    side: MaterialStateProperty.all(BorderSide(color: tdPurple,width: 1)),
                    fixedSize: MaterialStateProperty.all(Size(315, 50)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0), ),
                    ),// specify width, height
                  ),

                ))
                ]
            ),
        )
      )
    );
  }
}

