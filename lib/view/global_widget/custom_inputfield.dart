// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputField extends StatelessWidget {
  String? hintTex;
 String? labelTex;
  ///ghjkl;;;
  IconData? prefixIcon; //ghjkl
  IconData? suffixIcon; //fghjkl

  CustomInputField({super.key, this.hintTex, this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 53, 52, 52),
          hintText: hintTex,
          labelText: labelTex,
          hintStyle: GoogleFonts.montserrat(
              color: Colors.white,
              
              
              fontSize: 15),
          prefixIcon:
              prefixIcon != null ? Icon(prefixIcon) : null, // lkashodiasdoh
              prefixIconColor: Colors.white,
            
          suffixIcon: Icon(suffixIcon),
           border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),)
    );
  }
}