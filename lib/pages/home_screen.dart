import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillforge/authentication/home_cubit.dart'; 
import 'package:skillforge/pages/profile/profile_screen.dart';
import 'package:skillforge/pages/projects/projects_screen.dart'; 

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Widget> _pages = [
    const ProjectsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: BlocBuilder<HomeCubit, int>(
        builder: (context, currentIndex) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(currentIndex == 0 ? "Projects" : "Profile"),
            ),
            body: _pages[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                context.read<HomeCubit>().changeTab(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Projects",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
