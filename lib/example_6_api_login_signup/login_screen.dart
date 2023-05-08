import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_examples/example_6_api_login_signup/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login and Signup with GetX || Post || PUT || DELETE"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: "Enter Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                )
              ),
            ),

            SizedBox(height: 10,),

            TextField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
              ),
            ),

            SizedBox(height: 30,),

           Obx((){
             return  InkWell(
               onTap: (){
                 controller.loginApi();
               },
               child: Container(
                 height: 45,
                 color: Colors.blueGrey,
                 child: Center(
                   child: controller.loading.value ? CircularProgressIndicator(color: Colors.white,) : Text("Login"),
                 ),
               ),
             );
           })

          ],
        ),
      ),
    );
  }
}

