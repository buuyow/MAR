import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<String> conversations = [
    'John Doe',
    'Jane Smith',
    'Alice Johnson',
    // Add more conversations as needed
  ];

  @override
  Widget build(BuildContext context) {
    return 
   
      ListView.builder(
        itemCount: conversations.length,
        itemBuilder: (context, index) {
          final conversation = conversations[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            title: Text(conversation, style: TextStyle(color: Colors.white),),
            subtitle: Text('Last message received', style: TextStyle(color: Colors.white),),
            onTap: () {
              // Implement navigation to the conversation page
            },
          );
        },
      );
    
  }
}
