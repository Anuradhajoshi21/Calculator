// import 'package:flutter/material.dart';
// import 'calculator_button.dart';
// import 'package:flutter/services.dart';
//
// void main() {
//   runApp(CalculatorApp());
// }
//
// class CalculatorApp extends StatefulWidget {
//   const CalculatorApp({Key? key}) : super(key: key);
//
//   @override
//   State<CalculatorApp> createState() => _CalculatorAppState();
// }
//
// class _CalculatorAppState extends State<CalculatorApp> {
//   late  int firstNum;
//   late int secondNum;
//   late  String history='';
//   late  String textToDisplay='';
//   late String res='';
//   late String opertaion ='';
//
//   void btnclick( String btnVal){
//     print(btnVal);
//     if(btnVal=='C'){
//       textToDisplay:'';
//       firstNum=0;
//       secondNum=0;
//       res='';
//       //  history='';
//     }
//     else if(btnVal=='AC'){
//       textToDisplay:'';
//       firstNum=0;
//       secondNum=0;
//       history='';
//     }
//      else if(btnVal=='+/-'){
//        if(textToDisplay[0]!='-'){
//          res='-'+textToDisplay;
//        }
//        else{
//          res = textToDisplay.substring(1);
//        }
//     }
//     else if(btnVal=='<'){
//       res = textToDisplay.substring(0,textToDisplay.length -1);
//     }
//     else if(btnVal=='+'||btnVal=='-'||btnVal=='*'||btnVal=='/'){
//       firstNum = int.parse(textToDisplay);
//       res='';
//       opertaion=btnVal;
//
//     }
//     else if(btnVal=='='){
//       secondNum = int.parse(textToDisplay);
//       if(opertaion=='+'){
//         res= (firstNum+secondNum).toString();
//         history= firstNum.toString()+opertaion.toString()+secondNum.toString();
//       }
//       if(opertaion=='-'){
//         res= (firstNum-secondNum).toString();
//         history= firstNum.toString()+opertaion.toString()+secondNum.toString();
//       }
//       if(opertaion=='*'){
//         res= (firstNum*secondNum).toString();
//         history= firstNum.toString()+opertaion.toString()+secondNum.toString();
//       }
//       if(opertaion=='/'){
//         res= (firstNum/secondNum).toString();
//         history= firstNum.toString()+opertaion.toString()+secondNum.toString();
//       }
//     }
//     else{
//       res= int.parse(textToDisplay+btnVal).toString();
//     }
//     setState(() {
//       textToDisplay=res;
//
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return RawKeyboardListener(
//       focusNode: FocusNode(),
//       onKey: _handleKeyEvent,
//       child:
//       MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Calculator',
//         theme: ThemeData(primarySwatch: Colors.green),
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('Flutter Calculator'),
//           ),
//           backgroundColor: Colors.indigo,
//           body: Container(
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end ,
//                 children: [
//                   Container(
//                     child: Padding(
//                       padding: EdgeInsets.only(right:12),
//
//                       child :Text(
//                         history,
//                         style:TextStyle(
//                           fontSize: 24.0,
//                           color: Colors.blueGrey,
//                         ),
//                       ),
//                     ),
//                     alignment: Alignment(1.0,1.0),
//                   ),
//                   Container(
//                     child: Padding(
//                         padding: EdgeInsets.all(13),
//                         child :Text(
//                           textToDisplay,
//                           style:TextStyle(
//                             fontSize: 48.0,
//                             color: Colors.white,
//                           ),
//                         )
//
//                     ),
//                     alignment: Alignment(1.0,1.0),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       CalculatorButton(text: 'AC', fillColor:0xFFC6FF00,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: 'C', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '<', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '/', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       )
//
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       CalculatorButton(text: '9', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '8', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '7', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '*', fillColor:0xFF8ac4d160,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       )
//
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       CalculatorButton(text: '6', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '5', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '4', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '-', fillColor:0xFF8ac4d160,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       )
//
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       CalculatorButton(text: '3', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '2', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '1', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '+', fillColor:0xFF8ac4d160,
//                         textColor:  0xFF00000, textsize: 20, callback:btnclick,
//
//                       )
//
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       CalculatorButton(text: '0', fillColor:0xFF8ac4d0,
//                         textColor:  0xFF00000, textsize: 22, callback:btnclick,
//
//                       ),
//                       CalculatorButton(text: '00', fillColor:0xFF8ac4d0,
//                           textColor:  0xFF00000, textsize: 24, callback:btnclick
//
//                       ),
//                       CalculatorButton(text: '+/-', fillColor:0xFF8ac4d0,
//                           textColor:  0xFF00000, textsize: 24, callback:  btnclick
//
//                       ),
//                       CalculatorButton(text: '=', fillColor:0xFF8ac4d0,
//                           textColor:  0xFF00000, textsize: 24, callback: btnclick
//
//                       )
//
//                     ],
//                   ),
//                 ]
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   void _handleKeyEvent(RawKeyEvent event) {
//     // You can handle the keyboard event hereAA7
//     if (event is RawKeyDownEvent) {
//       if (event.logicalKey.keyLabel != null) {
//         btnclick(event.logicalKey.keyLabel);
//       }
//     }
//   }
// }
