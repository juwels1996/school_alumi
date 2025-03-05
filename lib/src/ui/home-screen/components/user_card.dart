import 'package:flutter/material.dart';
import 'package:testing_purpose/src/core/model/user_model.dart';

import '../../widgets/responsive_screen.dart';

class UserCard extends StatelessWidget {
  final UserDatum user;
  final ValueChanged<UserDatum> onEdit;

  const UserCard({
    Key? key,
    required this.user,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Decide sizes based on screen type
    final bool isSmall = Responsive.isSmallScreen(context);
    final bool isMedium = Responsive.isMediumScreen(context);
    final bool isLarge = Responsive.isLargeScreen(context);

    // Adjust sizes for each breakpoint
    double avatarRadius;
    double cardHeight;
    double usernameFontSize;
    double designationFontSize;
    double phoneFontSize;
    double batchFontSize;
    double addressFontSize;

    if (isSmall) {
      avatarRadius = 40;
      cardHeight = 120;
      usernameFontSize = 14;
      designationFontSize = 12;
      phoneFontSize = 12;
      batchFontSize = 12;
      addressFontSize = 10;
    } else if (isMedium) {
      avatarRadius = 50;
      cardHeight = 140;
      usernameFontSize = 16;
      designationFontSize = 14;
      phoneFontSize = 14;
      batchFontSize = 14;
      addressFontSize = 12;
    } else {
      // Large screens
      avatarRadius = 60;
      cardHeight = 180;
      usernameFontSize = 18;
      designationFontSize = 16;
      phoneFontSize = 16;
      batchFontSize = 14;
      addressFontSize = 12;
    }

    return Card(
      color: Colors.blue.shade100,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
      child: Container(
        height: cardHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow, Colors.blueAccent],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 5),
            CircleAvatar(
              radius: avatarRadius,
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
                fontSize: usernameFontSize,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              user.designation ?? "",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: designationFontSize,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              user.phoneNumber ?? "",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: phoneFontSize,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Batch: ${user.sscBatch ?? ""}",
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: batchFontSize,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              user.address ?? "",
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: addressFontSize,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
