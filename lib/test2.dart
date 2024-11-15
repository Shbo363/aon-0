
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/register_controler.dart';
class RegisterView extends StatefulWidget {
  RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(RegisterController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100,),
            TextFormField(
              controller: controller.nameController,
              decoration: const InputDecoration(
                  hintText: "Enter name "
              ),
            ),
            const SizedBox(height: 50,),
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                  hintText: "Enter Email "
              ),
            ),
            const SizedBox(height: 50,),
            TextFormField(
              controller: controller.passwordController,
              decoration: const InputDecoration(
                  hintText: "Enter password "
              ),
            ),
            const SizedBox(height: 50,),
            ElevatedButton(
              onPressed: (){
                controller.register(context);
              },
              child:const Text("regsertion"),
            ),

          ],
        ),
      ),
    );
  }
}