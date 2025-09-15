import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;

  const AppbarWidget({
    super.key,
    required this.title,
    this.actions,
    this.leading,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      leading:
          leading ??
          (Navigator.canPop(context)
              ? IconButton(
                  icon: const Icon(Icons.chevron_left, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                )
              : null),

      automaticallyImplyLeading: false,
      centerTitle: true,
      actions: actions ?? [],
    );
  }
}
