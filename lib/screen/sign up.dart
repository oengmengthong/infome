import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUp();
}

class SignUp extends State<SignUpScreen> {
  TextEditingController firstname = new TextEditingController();
  TextEditingController lastname = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController pwd = new TextEditingController();
  TextEditingController confirmpwd = new TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  bool _obscureText = true;
  bool _obscureText1 = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('SIGN UP', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(left: 32,right: 32),
          child: SingleChildScrollView(
            child: _formsignup(),
          ),
        ),
      ),
    );
  }

  Widget _formsignup() {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 16),
          Text('Firstname'),
          SizedBox(height: 5),
          _firstname(),
          SizedBox(height: 5),
          Text('Lastname'),
          SizedBox(height: 5),
          _lastname(),
          SizedBox(height: 5),
          Text('Email'),
          SizedBox(height: 5),
          _email(),
          SizedBox(height: 5),
          Text('Password'),
          SizedBox(height: 5),
          _password(),
          SizedBox(height: 5),
          Text('Confirm Password'),
          SizedBox(height: 5),
          _confirmpassword(),
          SizedBox(height: 32),
          _buttonsignup(),
        ],
      ),
    );
  }

  Widget _firstname() => TextFormField(
      controller: email,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          fillColor: Colors.white,
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.teal, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.teal, width: 3)),
          prefixIcon: Icon(Icons.person, size: 30, color: Colors.teal),
          hintText: 'firstname',
          hintStyle: TextStyle(color: Color(0xFF7D8EA7))));

  Widget _lastname() => TextFormField(
      controller: email,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          fillColor: Colors.white,
          focusColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.teal, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.teal, width: 3)),
          prefixIcon: Icon(Icons.person, size: 30, color: Colors.teal),
          hintText: 'lastname',
          hintStyle: TextStyle(color: Color(0xFF7D8EA7))));

  Widget _email() => TextFormField(
      controller: email,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
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

  Widget _confirmpassword() => TextFormField(
      controller: pwd,
      obscureText: _obscureText1,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
              dragStartBehavior: DragStartBehavior.down,
              onTap: () {
                setState(() {
                  _obscureText1 = !_obscureText1;
                });
              },
              child: Icon(
                  _obscureText1 ? Icons.visibility : Icons.visibility_off,
                  semanticLabel:
                  _obscureText1 ? 'show password' : 'hide password')),
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

  Widget _buttonsignup() {
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
            onPressed: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Sign Up',
                      style: TextStyle(fontSize: 17, color: Colors.white))
                ])));
  }
}
