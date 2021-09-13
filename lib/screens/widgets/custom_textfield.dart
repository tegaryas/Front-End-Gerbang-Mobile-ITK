import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hint;
  final Function onSave;
  final Function validator;
  final TextInputType keyboardType;
  CustomTextFormField({
    this.text,
    this.hint,
    this.onSave,
    this.validator,
    this.keyboardType,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: hint == 'Password' ? true : false,
          onSaved: onSave,
          validator: validator,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Color(0xFFe7edeb),
            hintText: hint,
            hintStyle: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
