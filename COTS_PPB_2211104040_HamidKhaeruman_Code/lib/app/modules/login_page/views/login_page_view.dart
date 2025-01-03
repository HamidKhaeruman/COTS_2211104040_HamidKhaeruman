import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_page_controller.dart';
import '../../../design_systems/palette_colors.dart';
import '../../../design_systems/typography_fonts.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PaletteColors.white,
        title: Image.asset(
          'assets/logos/gojek_logo.png', // Ganti dengan path logo Gojek
          height: 40, // Sesuaikan ukuran logo
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline, color: PaletteColors.primary1),
            onPressed: () {
              // Tindakan untuk tombol tanya
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TypographyFonts.h1,
            ),
            SizedBox(height: 20),
            Text(
              'Enter your registered phone number to log in',
              style: TypographyFonts.paragraph1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Phone number*',
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.onHome,
              child: Text('Continue'),
              style: ElevatedButton.styleFrom(
                backgroundColor: PaletteColors.primary1,
                foregroundColor: PaletteColors.white,
                padding: EdgeInsets.symmetric(vertical: 15),
                textStyle: TypographyFonts.h5,
              ),
            ),
            SizedBox(height: 20),
            // Tambahkan tombol navigasi atau opsi lain jika perlu
          ],
        ),
      ),
    );
  }
}
