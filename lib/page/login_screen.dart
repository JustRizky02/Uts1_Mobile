import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_mobile/navbar/navbar.dart';
import 'package:project_mobile/page/signup.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
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
                      color: CupertinoColors.darkBackgroundGray.withOpacity(.7),
                    ),
                    keyboardType: TextInputType.text,
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
                      color: CupertinoColors.darkBackgroundGray.withOpacity(.7),
                    ),
                    keyboardType: TextInputType.emailAddress,
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
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                onPressed: () {
                  final String username = emailController.text;
                  final String password = passwordController.text;

                  // Validasi login
                  if (registeredUsers.containsKey(username) &&
                      registeredUsers[username] == password) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Login berhasil!'),
                      ),
                    );
                    // Gunakan router untuk pindah ke Navbar() setelah login berhasil
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Navbar(),
                      ),
                    ); // Mengarahkan ke halaman Navbar()
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Login gagal! Periksa kembali username dan password.'),
                      ),
                    );
                  }
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CupertinoButton(
                color: Colors.black12,
                child: const FittedBox(
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                onPressed: () {
                  // Menggunakan router untuk pindah ke halaman Signup
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
