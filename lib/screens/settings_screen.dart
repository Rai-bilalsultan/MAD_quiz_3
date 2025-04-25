import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Student Menu',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              trailing: Checkbox(value: false, onChanged: null),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Checkbox(value: true, onChanged: null),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              trailing: Checkbox(value: false, onChanged: null),
            ),
          ],
        ),
      ),
    );
  }
}