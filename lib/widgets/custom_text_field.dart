import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key,this.inputType, this.hintText, this.onChanged , this.obscureText =false});
  Function(String)? onChanged;
  String? hintText;
  TextInputType? inputType;

  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText:obscureText!,
      keyboardType: inputType,
     
      
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.purple,
          ),
          borderRadius: BorderRadius.circular(8)
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            
          ),
          borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}
