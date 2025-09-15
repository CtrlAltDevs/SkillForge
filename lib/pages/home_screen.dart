import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:skillforge/authentication/home_cubit.dart';
import 'package:skillforge/pages/profile/profile_screen.dart';
import 'package:skillforge/pages/projects/projects_screen.dart';
import 'package:skillforge/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Widget> _pages = [const ProjectsScreen(), const ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: BlocBuilder<HomeCubit, int>(
        builder: (context, currentIndex) {
          return Scaffold(
            body: _pages[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: AppColors.blueGrey,
              currentIndex: currentIndex,
              onTap: (index) {
                context.read<HomeCubit>().changeTab(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(LucideIcons.workflow),
                  label: "Projects",
                ),
                BottomNavigationBarItem(
                  icon: Icon(LucideIcons.user),
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
