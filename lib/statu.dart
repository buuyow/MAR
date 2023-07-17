import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  List<StatusUpdate> statusUpdates = [
    StatusUpdate(
      username: 'John Doe',
      timeAgo: '2 hours ago',
      content: 'Feeling adventurous today! 🌍✈️',
    ),
    StatusUpdate(
      username: 'Jane Smith',
      timeAgo: '4 hours ago',
      content: 'Enjoying a nice cup of coffee ☕',
    ),
    // Add more status updates as needed
  ];

  @override
  Widget build(BuildContext context) {
    return 
    
      ListView.builder(
        itemCount: statusUpdates.length,
        itemBuilder: (context, index) {
          final statusUpdate = statusUpdates[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),
            title: Text(statusUpdate.username),
            subtitle: Text(statusUpdate.timeAgo),
            trailing: Icon(Icons.more_horiz),
            onTap: () {
              // Implement action when a status update is tapped
            },
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            isThreeLine: true,
          );
        },
      );
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement action when the floating action button is pressed
        },
        child: Icon(Icons.add),
      );
    
  }
}

class StatusUpdate {
  final String username;
  final String timeAgo;
  final String content;

  StatusUpdate({required this.username, required this.timeAgo, required this.content});
}
