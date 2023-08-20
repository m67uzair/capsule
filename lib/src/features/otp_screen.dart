// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pinput/pinput.dart';
//
// import '../constants/constants.dart';
//
// class OTPScreen extends StatelessWidget {
//   const OTPScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.arrow_back,
//               color: kPinkColor,
//             ),
//           ),
//           SizedBox(
//             height: 227,
//             width: 217,
//             child: Image(
//               image: AssetImage("assets/OTP.jpg"),
//             ),
//           ),
//           Text(
//             "OTP Verification",
//             style: TextStyle(
//                 fontSize: 22, color: kPinkColor, fontWeight: FontWeight.w700),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Enter the OTP sent to",
//                 style: TextStyle(color: kPinkColor, fontSize: 15),
//               ),
//               Text(
//                 " +91 xxxxxxx912",
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: kPinkColor,
//                     fontSize: 15),
//               )
//             ],
//           ),
//
//           Pinput(
//             length: 4,
//             onChanged: (value) {
//               // code = value;
//             },
//             // defaultPinTheme: defaultPinTheme,
//             // focusedPinTheme: focusedPinTheme,
//             // submittedPinTheme: submittedPinTheme,
//
//             showCursor: true,
//             onCompleted: (pin) => print(pin),
//           ),
//
//           //       Row(
//           //        children: [
//           //          SizedBox(
//           //              height: 50,
//           //              width: 50,
//           //              child: TextField(
//           //                keyboardType: TextInputType.number,
//           // decoration: InputDecoration(
//           //
//           //              ),)),
//           //
//           //
//           //        ],
//           //      ),
//
//           Row(
//             children: [
//               Text("Didn’t you receive the OTP?"),
//               TextButton(onPressed: () {}, child: Text(" Resend OTP"))
//             ],
//           ),
//           CupertinoButton(
//             onPressed: () {},
//             child: Text(
//               "Sign Up",
//               style: TextStyle(fontSize: 16),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
