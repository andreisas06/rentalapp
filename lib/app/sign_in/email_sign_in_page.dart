import 'package:flutter/material.dart';

class EmailSignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign In'),
        elevation: 2,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  _buildContent() {
    return Container();
  }
}
