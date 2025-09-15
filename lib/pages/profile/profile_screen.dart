import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:skillforge/shared/custom_appbar.dart';
import 'package:skillforge/utils/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late User user;

  List<Map<String, dynamic>> listProjects = [
    {"quantity": "12", "type": "Projects"},
    {"quantity": "3", "type": "Goals"},
    {"quantity": "2", "type": "Achievements"},
  ];

  @override
  void initState() {
    user = _auth.currentUser!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(title: 'Profile'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Visibility(
              visible: user.photoURL != null,
              replacement: CircleAvatar(
                radius: 60.0,
                child: Text(
                  user.displayName != null && user.displayName!.isNotEmpty
                      ? user.displayName![0].toUpperCase()
                      : user.email != null && user.email!.isNotEmpty
                      ? user.email![0].toUpperCase()
                      : '?',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(user.photoURL ?? ''),
                child: user.photoURL == null
                    ? Icon(Icons.person, size: 48.0)
                    : null,
              ),
            ),
          ),
          Text("Teste 01", style: TextStyle(color: AppColors.lightGrey)),
          Text("Ultra-learner", style: TextStyle(color: AppColors.lightGrey)),
          //  CustomButton(onPressed: () {}, name: "Edit profile"),
          Flexible(
            child: GridView.builder(
              itemCount: listProjects.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          listProjects[index]['quantity'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          listProjects[index]['type'],
                          style: TextStyle(color: AppColors.lightGrey),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
