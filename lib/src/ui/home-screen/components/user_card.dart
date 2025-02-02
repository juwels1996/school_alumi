import 'package:flutter/material.dart';
import 'package:testing_purpose/src/core/model/user_model.dart';

class UserCard extends StatelessWidget {
  final UserDatum user;
  final ValueChanged<UserDatum> onEdit;

  const UserCard({
    Key? key,
    required this.user,
    required this.onEdit,
  }) : super(key: key);

  void _showEditDialog(BuildContext context) {
    final usernameController = TextEditingController(text: user.username);
    final addressController = TextEditingController(text: user.address);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Profile'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
              ),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(labelText: 'Address'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                final updatedUser = UserDatum(
                  username: usernameController.text,
                  address: addressController.text,
                  profileImage: user.profileImage,
                  memories: user.memories,
                );
                onEdit(updatedUser);
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade100,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow, Colors.blueAccent],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        height: 200,
        child: Column(
          spacing: 2,
          children: [
            SizedBox(
              height: 5,
            ),
            CircleAvatar(
              radius: 45,
              backgroundImage: user.profileImage != null
                  ? NetworkImage(user.profileImage!)
                  : null,
              child:
                  user.profileImage == null ? const Icon(Icons.person) : null,
            ),
            Text(
              user.username ?? "",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              user.designation ?? "",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              user.phoneNumber ?? "",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Batch: ${user.sscBatch}" ?? "",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 12,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              user.address ?? "",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
