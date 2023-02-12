import 'package:flutter/material.dart';

Widget defaultButton(
{
  double width=double.infinity,
  Color backGround= Colors.blue,
  double height=50,
  required String?  text,
  double radius=0.0,
  bool isUppercase=true,
  required Function()  onPressed,

}
    )=> Container(
    decoration:BoxDecoration(
      color:backGround,
      borderRadius: BorderRadius.circular(radius),
    ) ,
    width:width,
     height: height,
    child: MaterialButton(
    onPressed: onPressed,
    child: Text(
      isUppercase ?text!.toUpperCase():text!,
      style: const TextStyle(color: Colors.white,),
    ),
  ),
);

Widget defaultFormField(
{
 required TextEditingController? controller,
  required TextInputType? type,
   required String? label,
  required IconData?  prefixIcon,
       IconData?  suffixIcon,
  Function()?  suffixPressed,

   Function(String)? onFieldSubmitted,
  required  String? Function(String?) validator,
  bool isPassword=false



}
    )=>TextFormField(


  keyboardType:type,
    controller:controller,
     validator: validator,
     obscureText:isPassword,


     onFieldSubmitted:onFieldSubmitted,

  decoration:  InputDecoration(

    border: OutlineInputBorder(),

    labelText:label,
    prefixIcon: Icon(
      prefixIcon,
    ),
    suffixIcon: IconButton(
     icon:  Icon(
          suffixIcon,
      ),
      onPressed: suffixPressed,
    ),



  ),
);


