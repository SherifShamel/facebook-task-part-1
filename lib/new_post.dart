import 'package:flutter/material.dart';

class NewPost extends StatelessWidget {
  const NewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CircleAvatar(
            child: Image.asset("assets/img/man.png"),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "What's on your mind?",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
          ),
        ),
        Expanded(flex: 1, child: Icon(Icons.image_sharp)),
      ],
    );
  }
}
