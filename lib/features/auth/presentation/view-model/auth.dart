import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AuthImpl {
  void login(String email, String password);
  void register(String email, String password);
}

class AuthController extends GetxController implements AuthImpl {
  var emailController ;
  var passwordController ;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    
    // Initialize any necessary logic or dependencies here
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  @override
  void login(String email, String password) {
    // Implement your login logic here
  }

  @override
  void register(String email, String password) {
    // Implement your register logic here
  }
}
