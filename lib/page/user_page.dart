import 'package:flutter/material.dart';
import 'package:sendemail/model/user.dart';

class UserPage extends StatelessWidget {
  final User user;

  const UserPage({
    required Key key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(user.username),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(user.urlAvatar),
            radius: 80,
          ),
          const SizedBox(height: 40),
          Text(
            user.username,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 64),
          RaisedButton(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            color: Colors.teal,
            child: Text(
              'Send Email',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            onPressed: () {},
          ),
        ],
      ),
    ),
  );

  RaisedButton({required EdgeInsets padding, required MaterialColor color, required Text child, required Null Function() onPressed}) {}
}