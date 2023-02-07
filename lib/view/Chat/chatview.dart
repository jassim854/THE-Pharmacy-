import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/textStyles.dart';

class ChatView extends StatelessWidget {
   static const routeName = '/ChatView';
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'CHAT VIEW',
          style: kHeadingBlackStyle,
        ),
      ),
    );
  }
}
