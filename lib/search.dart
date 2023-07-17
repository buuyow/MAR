import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<User> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search People'),
      ),
      body: ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          final user = searchResults[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(user.profilePicture),
            ),
            title: Text(user.name),
            subtitle: Text(user.location),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Implement action when a user is tapped
            },
          );
        },
      ),
    );
  }
}

class User {
  final String name;
  final String location;
  final String profilePicture;

  User({required this.name, required this.location, required this.profilePicture});
}
