import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Builder(builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Signup',
                style: TextStyle(
                  color: CupertinoColors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey5,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    CupertinoTextFormFieldRow(
                      controller: emailController,
                      prefix: const Center(
                        child: Icon(
                          CupertinoIcons.mail,
                          color: Colors.black,
                        ),
                      ),
                      placeholder: 'Email',
                      placeholderStyle: TextStyle(
                        color:
                            CupertinoColors.darkBackgroundGray.withOpacity(.7),
                      ),
                      keyboardAppearance: Brightness.dark,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(color: CupertinoColors.separator),
                        ),
                      ),
                    ),
                    CupertinoTextFormFieldRow(
                      controller: passwordController,
                      prefix: const Center(
                        child: Icon(
                          CupertinoIcons.lock,
                          color: Colors.black,
                        ),
                      ),
                      obscureText: true,
                      placeholder: 'Password',
                      placeholderStyle: TextStyle(
                        color:
                            CupertinoColors.darkBackgroundGray.withOpacity(.7),
                      ),
                      keyboardAppearance: Brightness.dark,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(color: CupertinoColors.separator),
                        ),
                      ),
                    ),
                    CupertinoTextFormFieldRow(
                      controller: confirmPasswordController,
                      prefix: const Center(
                        child: Icon(
                          CupertinoIcons.lock,
                          color: Colors.black,
                        ),
                      ),
                      obscureText: true,
                      placeholder: 'Confirm Password',
                      placeholderStyle: TextStyle(
                        color:
                            CupertinoColors.darkBackgroundGray.withOpacity(.7),
                      ),
                      keyboardAppearance: Brightness.dark,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CupertinoButton(
                  color: Colors.black,
                  child: const FittedBox(
                    child: Text(
                      'Signup',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                  onPressed: () {
                    final String username = emailController.text;
                    final String password = passwordController.text;
                    final String confirm = confirmPasswordController.text;

                    if (username.isNotEmpty &&
                        password.isNotEmpty &&
                        confirm.isNotEmpty) {
                      if (password == confirm) {
                        registeredUsers[username] = password;
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Signup successful!'),
                          ),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Passwords do not match!'),
                          ),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please fill all fields!'),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

// Simpan data pendaftaran dalam variabel global (untuk keperluan contoh)
Map<String, String> registeredUsers = {};
