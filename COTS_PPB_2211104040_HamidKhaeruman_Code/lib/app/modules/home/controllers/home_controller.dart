import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final currentIndex =
      0.obs; // Menambahkan currentIndex untuk BottomNavigationBar

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

  void changeIndex(int index) {
    currentIndex.value =
        index; // Mengubah index saat item BottomNavigationBar di-tap
  }
}
