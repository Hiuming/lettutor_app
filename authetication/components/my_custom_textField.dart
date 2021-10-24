import 'package:flutter/material.dart';

class MyTextField {
  static Widget reusableTexFiled(String hint, double _height, double _width,
      bool _isPassword, IconData _icon) {
    return Container(
      //Type TextField
      width: _width,
      // height: _height,
      child: TextField(
        obscureText: _isPassword,
        style: TextStyle(
          height: 1,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            _icon,
            color: Colors.lightBlue,
          ),
          //contentPadding: EdgeInsets.all(2.0),
          border: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(25)),

          hintText: hint, // pass the hint text parameter here
          //hintStyle: TextStyle(color: tcolor),
        ),
        //style: TextStyle(color: icolor),
      ),
    );
  }
}
