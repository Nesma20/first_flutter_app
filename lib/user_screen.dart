import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  List<UserModel> users = [
UserModel(id: 1, phoneNumber: "01111111", name: "nesma"),
UserModel(id: 2, phoneNumber: "011122211", name: "esraa"),
UserModel(id: 3, phoneNumber: "011133311", name: "mohamed"),
UserModel(id: 4, phoneNumber: "01111111", name: "nesma"),
UserModel(id: 5, phoneNumber: "01111111", name: "nesma"),
UserModel(id: 6, phoneNumber: "01111111", name: "nesma"),
UserModel(id: 7, phoneNumber: "01111111", name: "nesma"),
UserModel(id: 8, phoneNumber: "01111111", name: "nesma"),
UserModel(id: 9, phoneNumber: "01111111", name: "nesma"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Users"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => buildUserItem(users[index]),
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20.0),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey[300],
                  ),
                ),
            itemCount: users.length));
  }

// 1. build item
  Widget buildUserItem(UserModel userModel) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              child: Text(
                '${userModel.id}',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${userModel.name}',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${userModel.phoneNumber}',
                  style: TextStyle(fontSize: 10.0, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
      );
}

class UserModel {
  final int id;
  final String name;
  final String phoneNumber;

  UserModel({
   required this.id,
   required this.phoneNumber,
   required this.name
  });
}

