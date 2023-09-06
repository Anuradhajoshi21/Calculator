// import 'package:flutter/Material.dart';
//
//
// class CalculatorButton extends StatelessWidget {
//   final  String  text;
//   final int fillColor;
//   final int textColor;
//   final double textsize;
//   final Function callback;
//   const CalculatorButton({
//     required  this.text,
//     required  this.fillColor,
//     required  this.textColor,
//     required  this.textsize,
//     required  this.callback,
//
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // decoration: BoxDecoration(
//       //     border: Border.all(width: 4, color: Colors.black),
//       //     // borderRadius: BorderRadius.all(Radius.circular(20)),
//       //     ),
//       margin: EdgeInsets.all(10.0),
//       child: SizedBox(
//         width: 70.0,
//         height: 70.0,
//         child: TextButton(
//           onPressed: () =>callback(text),
//           style: TextButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               // borderRadius: BorderRadius.zero(),
//             ),
//             backgroundColor: Colors.indigo, // Set the blue background color here
//           ),
//           child: Text(
//             text,
//             style: TextStyle(fontSize: 28, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//
//   }
// }
