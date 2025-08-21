import 'package:flutter/material.dart';

class CustamTextFaild extends StatelessWidget {
CustamTextFaild({super.key, this.hint, this.ispassword=false,required this.cont});

 

final String ?hint;
final bool ispassword;
final TextEditingController cont;
  @override
  Widget build(BuildContext context) {
    return   Padding(
              padding: const EdgeInsets.symmetric(vertical:10,horizontal: 40 ),
              child: TextFormField(
                controller:cont,

                obscureText: ispassword,
               decoration: InputDecoration(
                hintText: hint,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
               ),
              //  validator: (String?value){
              //   if(value?.isEmpty??false){
              //     return "enter this faild";

              //   }
              //   return null;
              //  }
              ),
              
            );
  }
}