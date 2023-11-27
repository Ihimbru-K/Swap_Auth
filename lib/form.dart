// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// import 'form_data_display.dart';
//
// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final _formKey = GlobalKey<FormState>();
//
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController dobController = TextEditingController();
//   final TextEditingController addressController = TextEditingController();
//
//   void storeFormData() {
//     if (_formKey.currentState!.validate()) {
//       // Form is valid, proceed with storing data
//       FirebaseFirestore.instance.collection('users').add({
//         'name': nameController.text,
//         'email': emailController.text,
//         'phone': phoneController.text,
//         'dob': dobController.text,
//         'address': addressController.text,
//       }).then((value) {
//         print('Form data stored successfully!');
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => UserDataScreen(userEmail: emailController.text,)),
//         );
//         // Perform any additional actions upon successful storage
//       }).catchError((error) {
//         print('Failed to store form data: $error');
//         // Handle any errors that occur during storage
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Personal Information', style: TextStyle(color: Colors.deepPurple),),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Name'),
//                 controller: nameController,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16.0),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Email'),
//                 controller: emailController,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter an email address';
//                   }
//                   if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
//                     return 'Please enter a valid email address';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16.0),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Phone'),
//                 controller: phoneController,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter a phone number';
//                   }
//                   // Add additional phone number format validation if needed
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16.0),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Date of Birth'),
//                 controller: dobController,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your date of birth';
//                   }
//                   // Add additional date validation if needed
//                   return null;
//                 },
//               ),
//               SizedBox(height: 16.0),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Address'),
//                 controller: addressController,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your address';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: screenHeight*0.08),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     storeFormData();
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(builder: (context) => UserDataScreen()),
//                    // );
//                   }
//                 },
//                 child: Text('Submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'form_data_display.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState(initializeDateFormatting());
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  _MyFormState(Future<void> initializeDateFormatting);

  void storeFormData() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, proceed with storing data
      FirebaseFirestore.instance.collection('users').add({
        'name': nameController.text,
        'email': emailController.text,
        'phone': phoneController.text,
        'dob': dobController.text,
        'address': addressController.text,
      }).then((value) {
        print('Form data stored successfully!');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserDataScreen(userEmail: emailController.text)),
        );
        // Perform any additional actions upon successful storage
      }).catchError((error) {
        print('Failed to store form data: $error');
        // Handle any errors that occur during storage
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Personal Information',
          style: TextStyle(color: Colors.deepPurple),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an email address';
                      }
                      if (!RegExp(
                          r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      border: OutlineInputBorder(),
                    ),
                    controller: phoneController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a phone number';
                      }
                      // Add additional phone number format validation if needed
                      return null;
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Date of Birth',
                      border: OutlineInputBorder(),
                    ),
                    controller: dobController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your date of birth';
                      }
                      try {
                        DateFormat('dd/MM/yyyy').parseStrict(value);
                      } catch (e) {
                        return 'Please enter a valid date in the format dd/mm/yyyy';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                      border: OutlineInputBorder(),
                    ),
                    controller: addressController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: screenHeight * 0.08),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        storeFormData();
                      }
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.deepPurple, padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}