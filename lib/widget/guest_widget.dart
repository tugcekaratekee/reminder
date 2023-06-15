import 'package:flutter/material.dart';

class GuestWidget extends StatelessWidget {
  const GuestWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/200'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'Tugce Karateke',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.phone),
          ),
          Icon(Icons.message),
        ],
      ),
    );
  }
}
