import 'package:flutter/material.dart';

class PostsPart extends StatelessWidget {
  const PostsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return PostsPart();
      },
    );
  }
}
