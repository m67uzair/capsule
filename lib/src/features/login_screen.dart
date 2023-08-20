// import 'package:capsule/components/custom_textfield.dart';
// import 'package:capsule/constants/constants.dart';
// import 'package:capsule/presentation/otp_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:capsule/components/custom_gradient.dart';
//
// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 child: InkWell(
//                   onTap: () {},
//                   child: SizedBox(
//                     height: 31,
//                     width: 31,
//                     child: Image(
//                       image: AssetImage("assets/Arrow - Left.png"),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               CustomGradient(text: "Log in your Account"),
//               SizedBox(
//                 height: size.height * 0.025,
//               ),
//               Center(
//                 child: SizedBox(
//                   width: size.width * 0.8,
//                   height: size.height * 0.27,
//                   child: Image(
//                     image: AssetImage("assets/login.jpg"),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: size.height * 0.025,
//               ),
//               Center(
//                 child: CustomTextFormField(),
//               ),
//               SizedBox(
//                 height: size.height * 0.025,
//               ),
//               Center(
//                 child: SizedBox(
//                   width: 123,
//                   height: 43,
//                   child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => OTPScreen()));
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: kPinkColor,
//                       ),
//                       child: Text(
//                         "Get OTP",
//                         style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.white,
//                             fontWeight: FontWeight.w600),
//                       )),
//                 ),
//               ),
//               SizedBox(
//                 height: size.height * 0.030,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     width: 100,
//                     height: 1.0,
//                     child: Container(
//                       margin: EdgeInsetsDirectional.only(start: 6.0, end: 6.0),
//                       height: 5.0,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   Text(
//                     "or continue with",
//                     style: TextStyle(
//                       fontSize: 19,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 100,
//                     height: 1.0,
//                     child: Container(
//                       margin: EdgeInsetsDirectional.only(start: 6.0, end: 6.0),
//                       height: 5.0,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: size.height * 0.030,
//               ),
//               Center(
//                 child: Container(
//                     height: 53,
//                     width: 327,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xFFC4C4C4)),
//                         borderRadius: BorderRadius.circular(10)),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           child: Image(
//                             image: AssetImage("assets/Google.png"),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Text(
//                           'Continue with google',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 17,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         )
//                       ],
//                     )),
//               ),
//               SizedBox(
//                 height: size.height * 0.020,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Don’t have an account?"),
//                   TextButton(
//                       onPressed: () {},
//                       child: Text(
//                         "Sign Up",
//                         style: TextStyle(
//                             color: kPinkColor, fontWeight: FontWeight.w700),
//                       ))
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
