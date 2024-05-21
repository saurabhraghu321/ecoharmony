// import 'package:flutter/material.dart';

// void main() {
//   runApp(LoginScreen());
// }

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           //title: Text('Login'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right:310,top: 50),
//                 child: const Text('login',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold ),),
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   border: OutlineInputBorder(), // Use OutlineInputBorder for box-like TextField
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   border: OutlineInputBorder(), // Use OutlineInputBorder for box-like TextField
//                 ),
//               ),
//               SizedBox(height: 10),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: TextButton(
//                   onPressed: () {
//                     // Add your forgot password logic here
//                   },
//                   child: Text('Forgot Password?',style:TextStyle(color:Colors.amber),),
//                 ),
//               ),
//               SizedBox(height:50,width:500,child:  ElevatedButton(
                
                
                
//                 onPressed: () {
//                   // Add your login logic here
//                 },
//                 child: Text('Login'),
//               ),),
             
//               SizedBox(height: 20),
//               Text('Or continue with'),
//               SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       // Add your Google login logic here
//                     },
//                     icon: Icon(Icons.account_circle),
//                   ),
//                   SizedBox(width: 10),
//                   IconButton(
//                     onPressed: () {
//                       // Add your mobile verification logic here
//                     },
//                     icon: Icon(Icons.message),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//     );
//   }
// }
