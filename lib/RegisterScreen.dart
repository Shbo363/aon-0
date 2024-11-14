import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'custom_widget.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          body:
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CustomStepProgress(totalSteps: 3, currentStep: 3),

                const SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 90),
                  child: Text(
                    'Enter Your Information',

                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 65),
                  child: Text(
                    'Please enter your personal information to\n '
                        'complete the registration process.\n',



                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ),












                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:0,right: 340,top: 10,bottom: 20),
                  child: Text('Name',style:GoogleFonts.poppins(color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500

                  ) ,

                  ),
                ),


                      // Country Code TextField (smaller)

                       // Space between country code and phone number fields

                      // Phone Number TextField

                SizedBox(height: 48,width: 385,


                       child: Expanded(
                          child:TextFormField(
                            validator: (value) => value!.isEmpty ? 'Enter Your Name' : null,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText:"Enter your Full name",
                              hintStyle: TextStyle(
                                color: Color(0xFFD9D9D9),
                                // Set your desired hint text color here
                              ),



                              // labelText: "Phone Number",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color:Color(0xFF3C97AF)), // Default border color
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Color(0xFF3C97AF)), // Border color when focused
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Colors.red), // Border color when there’s an error
                              ),
                            ),
                          )

                      ),
                ),SizedBox(height: 5,),

                Padding(
                  padding: const EdgeInsets.only(left:0,right: 340,top: 10,bottom: 20),
                  child: Text('Email',style:GoogleFonts.poppins(color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500

                  ) ,

                  ),
                ),
                SizedBox(height: 48,width: 385,


                  child: Expanded(
                      child:TextFormField(
                        validator: (value) => value!.isEmpty ? 'Enter Your Email' : null,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText:"Enter your Email Address",
                          hintStyle: TextStyle(
                            color: Color(0xFFD9D9D9), // Set your desired hint text color here
                          ),



                          // labelText: "Phone Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0xFF3C97AF)), // Default border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0xFF3C97AF)), // Border color when focused
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.red), // Border color when there’s an error
                          ),
                        ),
                      )

                  ),
                ),SizedBox(height: 5,),

                Padding(
                  padding: const EdgeInsets.only(left:0,right: 320,top: 10,bottom: 20),
                  child: Text('Password',style:GoogleFonts.poppins(color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500

                  ) ,

                  ),
                ),
                SizedBox(height: 48,width: 385,


                  child: Expanded(
                      child:TextFormField(
                        validator: (value) => value!.isEmpty ? 'Enter Your Password' : null,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          //suffixIcon:
                          hintText:"Enter Password",
                          hintStyle: TextStyle(
                            color: Color(0xFFD9D9D9), // Set your desired hint text color here
                          ),




                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0xFF3C97AF)), // Default border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0xFF3C97AF)), // Border color when focused
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.red), // Border color when there’s an error
                          ),
                        ),
                      )

                  ),
                ),





                const SizedBox(height: 200),

                SizedBox(height: 50,width: 345,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(color: Colors.grey),
                        ),
                        backgroundColor:
                        const Color(0xFF3C97AF)
                      // Button color based on selection
                    ),
                    onPressed:
                        () {
                      // Perform action on Next

                    },
                    // Disable if no option is selected
                    child: Row(
                      mainAxisSize: MainAxisSize.min, // Make the row fit its content
                      children: [
                        Text(
                          "Complete registration",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),

                      ],
                    ),


                  ),
                )































              ],
            ),
          ),
        );








  }
}
