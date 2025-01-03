import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../login_page/bindings/login_page_binding.dart';
import '../../login_page/views/login_page_view.dart'; // Pastikan untuk mengimpor LoginPageView

class OnboardingController extends GetxController {
  final count = 0.obs;
  final isEnglish = false.obs; // Menyimpan status bahasa

  void toggleLanguage() {
    isEnglish.value = !isEnglish.value;
    Get.updateLocale(isEnglish.value ? Locale('en', 'US') : Locale('id', 'ID'));
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void onLogin() {
    // Navigasi ke LoginPageView dengan binding
    Get.to(() => LoginPageView(), binding: LoginPageBinding());
  }

  void onRegister() {
    Get.snackbar('Register', 'Tombol Daftar ditekan');
  }
}
