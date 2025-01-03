import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';
import '../../../design_systems/palette_colors.dart';
import '../../../design_systems/typography_fonts.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Header dengan logo dan tombol bahasa
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Logo Gojek
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/logos/gojek_logo.png', // Ganti dengan nama file logo Anda
                      height: 40,
                    ),
                  ),
                  // Tombol pengaturan bahasa
                  IconButton(
                    icon: Obx(() {
                      return Image.asset(
                        controller.isEnglish.value
                            ? 'assets/icons/english_flag.png' // Ganti dengan nama file bendera Inggris
                            : 'assets/icons/indonesia_flag.png', // Ganti dengan nama file bendera Indonesia
                        height: 30, // Ukuran yang konsisten
                      );
                    }),
                    onPressed: () {
                      controller.toggleLanguage();
                    },
                  ),
                ],
              ),
            ),
            // Gambar Onboarding
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding_image1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Judul
            Text(
              'Selamat datang di gojek!',
              style: TypographyFonts.h1.copyWith(
                color: PaletteColors.primary1,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            // Deskripsi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhan mu, kapanpun, dan di manapun.',
                textAlign: TextAlign.center,
                style: TypographyFonts.paragraph1.copyWith(
                  color: PaletteColors.grey,
                ),
              ),
            ),
            SizedBox(height: 40),
            // Tombol Masuk
            ElevatedButton(
              onPressed: controller.onLogin,
              style: ElevatedButton.styleFrom(
                backgroundColor: PaletteColors.greenGojek,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
              child: Text(
                'Masuk',
                style: TypographyFonts.h5.copyWith(
                  color: PaletteColors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Tombol Daftar
            TextButton(
              onPressed: controller.onRegister,
              child: Text(
                'Belum ada akun? Daftar dulu',
                style: TypographyFonts.h5.copyWith(
                  color: PaletteColors.primary1,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Footer
            Container(
              padding: const EdgeInsets.all(20),
              color: PaletteColors
                  .white, // Ganti dengan warna dari design_systems
              child: Text(
                '© 2023 Gojek - Semua Hak Dilindungi',
                textAlign: TextAlign.center,
                style: TypographyFonts.paragraph2.copyWith(
                  color: PaletteColors.primary4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
