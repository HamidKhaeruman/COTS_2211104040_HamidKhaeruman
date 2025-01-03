import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../../../design_systems/palette_colors.dart';
import '../../../design_systems/typography_fonts.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logos/gojek_logo.png',
                      height: 40,
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              floating: true,
              backgroundColor: PaletteColors.white,
              actions: [
                IconButton(
                  icon:
                      Icon(Icons.notifications, color: PaletteColors.primary1),
                  onPressed: () {},
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildBalanceContainer(),
                    SizedBox(height: 20),
                    buildServiceButtons(),
                    SizedBox(height: 20),
                    buildHorizontalCardPanel(),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.local_offer), label: 'Promos'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.receipt), label: 'Orders'),
                BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
              ],
              currentIndex: controller.currentIndex.value,
              selectedItemColor: PaletteColors.primary1,
              onTap: (index) {
                controller.changeIndex(index);
              },
            )),
      ),
    );
  }

  Widget buildBalanceContainer() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: PaletteColors.lightGrey,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Text('Saldo Pengguna', style: TypographyFonts.h2),
          SizedBox(height: 8),
          Text('Rp 1.000.000', style: TypographyFonts.h3),
        ],
      ),
    );
  }

  Widget buildHorizontalCardPanel() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCardButton('Restos near me', 'assets/icons/red_fork.png'),
          SizedBox(width: 16),
          buildCardButton('Best-seller in my area', 'assets/icons/nearby.png'),
        ],
      ),
    );
  }

  Widget buildCardButton(String title, String iconPath) {
    return Container(
      constraints: BoxConstraints(maxWidth: 150), // Batasi lebar maksimum
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: PaletteColors.lightGrey,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize:
            MainAxisSize.min, // Menggunakan ukuran minimum untuk menyesuaikan
        children: [
          Image.asset(iconPath, height: 40),
          SizedBox(width: 8),
          Expanded(
              child: Text(title,
                  style: TypographyFonts.h3,
                  overflow:
                      TextOverflow.ellipsis)), // Menghindari overflow teks
        ],
      ),
    );
  }

  Widget buildServiceButtons() {
    return Wrap(
      spacing: 16.0,
      alignment: WrapAlignment.center,
      children: [
        buildServiceButton('assets/icons/go_ride.png', 'GoRide'),
        buildServiceButton('assets/icons/red_fork.png', 'GoFood'),
        buildServiceButton('assets/icons/go_car.png', 'GoCar'),
        buildServiceButton('assets/icons/go_send.png', 'GoSend'),
      ],
    );
  }

  Widget buildServiceButton(String iconPath, String label) {
    return GestureDetector(
      onTap: () {
        // Logic saat ikon diklik (tambahkan jika perlu)
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(iconPath, height: 40),
          SizedBox(height: 5),
          Text(label, style: TypographyFonts.paragraph1),
        ],
      ),
    );
  }
}
