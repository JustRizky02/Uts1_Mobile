import 'package:flutter/material.dart';
import 'package:project_mobile/page/login_screen.dart';
import 'package:project_mobile/text_box/my_text_box.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //edit field
  //Future<void> editField(String field) async {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Profile Page"),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 50),
            //Profile Picture
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage("assets/person3.jpg"),
            ),
            //User Email
            const SizedBox(height: 20),
            Text(
              'muhammad.rizkyherdiansyah@mhs.itenas.ac.id',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            //user detail
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'My Details',
                //textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            //username
            MyTextBox(
              text: 'Muhammad Rizky Herdiansyah',
              sectionName: 'Username',
              onPressed: () {},
            ),
            //onPressed: ,
            //),
            //bio
            MyTextBox(
              text: 'Ini beta bio',
              sectionName: 'Bio',
              onPressed: () {},
            ),
            //user post
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'My Post',
                //textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            MyTextBox(
              text: 'Beta Post',
              sectionName: 'Beta',
              onPressed: () {},
            ),
            //onPressed: ,
            //),
            //bio
            MyTextBox(
              text: 'Ini Beta Post',
              sectionName: 'Beta',
              onPressed: () {},
            ),
            //user post
            const SizedBox(height: 20),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(25),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout, // Menggunakan icon logout
                        color: Colors.white,
                      ),
                      SizedBox(width: 10), // Spasi antara icon dan teks
                      Text(
                        'Log Out',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
          ], //user posts
        ),
      ),
    );
  }
}
