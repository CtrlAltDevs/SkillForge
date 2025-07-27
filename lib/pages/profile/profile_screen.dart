import 'package:flutter/material.dart';
import 'package:skillforge/widgets/custom_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Map<String, dynamic>> listProjects = [
    {"quantity": "12", "type": "Projects"},
    {"quantity": "3", "type": "Goals"},
    {"quantity": "2", "type": "Achievements"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined)),
        ],
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 48.0,
            backgroundImage: NetworkImage(
              "https://blubbyweb.com/wp-content/uploads/2024/04/10000576236542828282540291111.jpg?w=1024",
            ),
          ),
          Text("Teste 01"),
          Text("Ultra-learner"),
          CustomButton(onPressed: () {}, name: "Edit profile"),
          Flexible(
            child: GridView.builder(
              itemCount: listProjects.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        listProjects[index]['quantity'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        ),
                      ),
                      Text(listProjects[index]['type']),
                    ],
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
