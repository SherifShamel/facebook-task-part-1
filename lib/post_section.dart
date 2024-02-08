import 'package:facebook_task_modified/generated/assets.dart';
import 'package:flutter/material.dart';

class PostSection extends StatelessWidget {
  const PostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(backgroundImage: AssetImage(Assets.imgMan)),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Post Poster"),
                      Row(
                        children: [
                          Text("7h . "),
                          Icon(Icons.public),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu_sharp),
                  SizedBox(width: 10),
                  Icon(Icons.highlight_remove),
                ],
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("abcdefg hiehd"),
            Container(
              padding: EdgeInsets.only(top: 10),
              color: Colors.grey,
              child: Image.asset(Assets.imgMan),
            ),
          ],
        )
      ],
    );
  }
}
