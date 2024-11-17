import 'package:flutter/material.dart';
import 'package:frontend_nyatet_app_flutter/utils/normal_button_custom.dart';
import 'package:frontend_nyatet_app_flutter/utils/textformfield_custom.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  static const routeName = "/settings";

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();

  final GlobalKey<FormState> _biodataValidator = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        children: [
          const SizedBox(height: 15),
          const CircleAvatar(
            minRadius: 70,
          ),
          const SizedBox(height: 15),
          Text(
            'Informasi Profile',
            style: GoogleFonts.quicksand(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Form(
            key: _biodataValidator,
            child: Column(
              children: [
                TextFormFieldCustom(
                  controller: nameController,
                  labelText: "Nama",
                ),
                const SizedBox(height: 10),
                TextFormFieldCustom(
                  controller: usernameController,
                  labelText: "Username",
                ),
                const SizedBox(height: 10),
                TextFormFieldCustom(
                  controller: emailController,
                  labelText: "Email",
                ),
                const SizedBox(height: 10),
                NormalButtonCustom(
                  title: 'Simpan Perubahan',
                  onTap: () {
                    if (_biodataValidator.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Berhasil disimpan...')),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          NormalButtonCustom(
            title: 'Hapus Akun',
            buttonColor: Colors.red,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      'Hapus Akun',
                      style: GoogleFonts.quicksand(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    content: Text(
                      'Apakah kamu yakin ingin menghapus akun?',
                      style: GoogleFonts.quicksand(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: Text(
                          'Batal',
                          style: GoogleFonts.quicksand(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      TextButton(
                        child: Text(
                          'Hapus',
                          style: GoogleFonts.quicksand(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
