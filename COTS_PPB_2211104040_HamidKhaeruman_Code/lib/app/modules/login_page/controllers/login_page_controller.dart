import 'package:cots_gojek_040/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';
import '../../home/bindings/home_binding.dart';

class LoginPageController extends GetxController {
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onHome() {
    // Logika untuk navigasi ke halaman berikutnya
    Get.to(() => HomeView(), binding: HomeBinding());
    // Misalnya: Get.to(NextPage());
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
}
