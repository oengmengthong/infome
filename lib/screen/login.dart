import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:info_me/screen/buttomnavigationbar.dart';
import 'package:info_me/screen/sign%20up.dart';

class LogInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LogIn();
}

class LogIn extends State<LogInScreen> {
  TextEditingController name = new TextEditingController();
  TextEditingController pwd = new TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  bool clickusename = false;
  bool _obscureText = true;
  bool _remember = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Column(
          children: <Widget>[
            _headerlogin(),
            _formlogin(),
            _buttomlogin(),
          ],
        ),
      ),
    );
  }

  Widget _headerlogin() {
    return Expanded(
        flex: 2,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    offset: Offset(0, 3), color: Colors.black38, blurRadius: 6)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to Info-Me',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ));
  }

  Widget _formlogin() {
    return Expanded(
      flex: 5,
      child: Container(
        padding: EdgeInsets.only(left: 32, right: 32, top: 32, bottom: 16),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Email or Username'),
                SizedBox(height: 5),
                _email(),
                SizedBox(height: 5),
                Text('Password'),
                SizedBox(height: 5),
                _password(),
                SizedBox(height: 5),
                _rememberMe(),
                SizedBox(height: 5),
                _buttonlogin(),
                SizedBox(height: 5),
                _forgetPassword(),
                SizedBox(height: 5),
                _signUp()
              ],
            )),
      ),
    );
  }

  Widget _rememberMe() => Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 8),
      child: Row(children: <Widget>[
        CupertinoSwitch(
            value: _remember,
            activeColor: Colors.teal,
            onChanged: (bool value) => setState(() => _remember = value)),
        Text('Remember Me', style: TextStyle(color: Colors.black, fontSize: 13))
      ]));

  Widget _email() => TextFormField(
      controller: name,
      keyboardType: TextInputType.text,
      validator: _validatorUsername,
      decoration: InputDecoration(
          suffixIcon: clickusename
              ? IconButton(
                  icon: Icon(Icons.backspace),
                  onPressed: () {
                    setState(() {
                      name.text = '';
                    });
                  })
              : null,
          fillColor: Colors.white,
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.teal, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.teal, width: 3)),
          prefixIcon: Icon(Icons.mail, size: 30, color: Colors.teal),
          hintText: 'example@email.com',
          hintStyle: TextStyle(color: Color(0xFF7D8EA7))));

  Widget _password() => TextFormField(
      controller: pwd,
      obscureText: _obscureText,
      keyboardType: TextInputType.text,
      validator: _validatorPassword,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
              dragStartBehavior: DragStartBehavior.down,
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  semanticLabel:
                      _obscureText ? 'show password' : 'hide password')),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.teal, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.teal, width: 3)),
          prefixIcon: Icon(
            Icons.vpn_key,
            size: 30,
            color: Colors.teal,
          ),
          hintText: '●●●●●●●●',
          hintStyle: TextStyle(fontSize: 10, color: Color(0xFF7D8EA7))));

  Widget _buttonlogin() {
    return Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
            ]),
        child: RaisedButton(
            color: Colors.teal,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ButtonNavigationBarOwner()));
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Login',
                      style: TextStyle(fontSize: 17, color: Colors.white))
                ])));
  }

  Widget _forgetPassword() => GestureDetector(
      onTap: () {},
      child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Forget password?',
                    style: TextStyle(color: Colors.black, fontSize: 15))
              ])));

  Widget _signUp() => Padding(
      padding: const EdgeInsets.only(top: 16),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text('Don\'t have an account?',
            style: TextStyle(color: Colors.black, fontSize: 15)),
        GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
            child: Text(' Sign Up',
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)))
      ]));

  Widget _buttomlogin() {
    return Expanded(
        flex: 2,
        child: Container(
            padding: EdgeInsets.all(32),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      child: Container(
                        color: Colors.black45,
                        height: 1,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                    ),
                    Text(
                      'Login With',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      child: Container(
                        color: Colors.black45,
                        height: 1,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _buttonLogInWithFB(),
                    _buttonLogInWithGoogle()
                  ],
                ),
              ],
            )));
  }

  Widget _buttonLogInWithFB() {
    return Container(
        height: 47.7,
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
            ]),
        child: RaisedButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.blue,
                width: 2,
              ),
            ),
            onPressed: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/facebook.png',
                    width: 35,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Facebook',
                      style: TextStyle(fontSize: 17, color: Colors.blue))
                ])));
  }

  Widget _buttonLogInWithGoogle() {
    return Container(
        height: 47.7,
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 3), color: Colors.black12, blurRadius: 6)
            ]),
        child: RaisedButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.red,
                width: 2,
              ),
            ),
            onPressed: () {},
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                Widget>[
              Image.asset(
                'images/google.png',
                width: 35,
              ),
              SizedBox(
                width: 5,
              ),
              Text('G',
                  style: TextStyle(fontSize: 17, color: Colors.blue[600])),
              Text('o', style: TextStyle(fontSize: 17, color: Colors.red[600])),
              Text('o',
                  style: TextStyle(fontSize: 17, color: Colors.yellow[900])),
              Text('g',
                  style: TextStyle(fontSize: 17, color: Colors.blue[600])),
              Text('l', style: TextStyle(fontSize: 17, color: Colors.green)),
              Text('e', style: TextStyle(fontSize: 17, color: Colors.red[600])),
            ])));
  }

  String _validatorUsername(String value) {
    if (value.isEmpty) {
      return 'Email \/ Username can not Empty';
    }
  }

  String _validatorPassword(String value) {
    if (value.isEmpty) {
      return 'Password can not Empty';
    }
  }
}
