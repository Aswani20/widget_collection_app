import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  final VoidCallback onItemSelected;

  const MenuScreen({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade700,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Avatar
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                ), // Use your own image
              ),
              SizedBox(height: 16),
              Text(
                "Hello, Salman",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),

              // Menu items
              _buildMenuItem(icon: Icons.home, title: "Home"),
              _buildMenuItem(icon: Icons.person, title: "Profile"),
              _buildMenuItem(icon: Icons.settings, title: "Settings"),
              _buildMenuItem(icon: Icons.info_outline, title: "About"),
              Spacer(),
              Divider(color: Colors.white54),
              _buildMenuItem(icon: Icons.logout, title: "Logout"),

              SizedBox(height: 12),
              Text(
                "v1.0.0",
                style: TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({required IconData icon, required String title}) {
    return ListTile(
      onTap: onItemSelected,
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
    );
  }
}