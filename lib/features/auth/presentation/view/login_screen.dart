import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/utliz/stayles.dart';
import 'package:ecommerce/features/auth/presentation/view-model/auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.put(AuthController());
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: GetBuilder<AuthController>(
            builder: (_) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome \n Back!",
                      style: Styles.textStyle34.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: controller.emailController,
                            decoration: InputDecoration(
                              focusColor: ColorManager.black,
                              prefixIcon: Icon(Icons.email),
                              labelText: "Email Address",
                              hintText: "Enter your email address",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ColorManager.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled:
                                  true, // Set to true to enable filling the background
                              fillColor: ColorManager
                                  .background, // Set the background color
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                            textInputAction: TextInputAction.done,
                            controller: controller.passwordController,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye),
                              prefixIcon: Icon(Icons.lock),
                              labelText: "Password",
                              hintText: "Enter your password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled:
                                  true, // Set to true to enable filling the background
                              fillColor: ColorManager
                                  .background, // Set the background color
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
