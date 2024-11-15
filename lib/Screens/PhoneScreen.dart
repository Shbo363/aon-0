import 'package:aon_project_0/Screens/VerifyPhone.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';

import '../controllers/phone_number.dart';
import '../custom_widget/stepprogress_widget.dart';

class PhoneScreen extends StatefulWidget {
  @override
  _PhoneScreenState createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final PhoneController _phoneController = Get.put(PhoneController());
 // final TextEditingController _phoneController = TextEditingController();
//  final TextEditingController _countryCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomStepProgress(totalSteps: 3, currentStep: 1),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 90),
                child: Text(
                  'Enter Your Phone\n'
                  "Number",
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 25),
                child: Text(
                  'Enter your phone number to verify your\n'
                  'identity and the validity of your number to\n'
                           'safely activate your account on the\n'
                      'platform.',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ),

              SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left:0,right: 268,top: 40,bottom: 20),
            child: Text('Phone Number',style:GoogleFonts.poppins(color: Colors.black,
              fontSize: 14,
            fontWeight: FontWeight.w500

            ) ,

            ),
          ),
              Row(
                children: [

                  Container(
                    width: 95,
                    child: TextFormField(

                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(

                        hintText: "+964",hintStyle: TextStyle(color: Colors.black,fontSize: 15),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left:5,right: 10 ,bottom: 0 ),
                          child: Image.asset(
                            'assets/image/iraq.png',
                            width: 5,
                            height: 2,

                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(8)


                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Obx(() => TextFormField(
                      controller: TextEditingController(text: _phoneController.phoneNumber.value),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        _phoneController.phoneNumber.value = value;
                        _phoneController.validatePhoneNumber();
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Your Phone Number",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFF3C97AF)
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    )
                    ),
                  ),
              ]
              ),
              const SizedBox(height: 320),

              SizedBox(
                height: 50,
                width: 345,
                child: Obx(() => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.grey),
                    ),
                    backgroundColor: _phoneController.isButtonEnabled.value
                        ? Color(0xFF3C97AF)
                        : Colors.grey,
                  ),
                  onPressed: _phoneController.isButtonEnabled.value
                      ? () {
                    String phoneNumber = _phoneController.phoneNumber.value;
                    String countryCode = _phoneController.countryCode.value;
                    print("Country Code: $countryCode, Phone Number: $phoneNumber");
                    Get.to(Verifyphone());
                  }
                      : null,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Send verification code",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


