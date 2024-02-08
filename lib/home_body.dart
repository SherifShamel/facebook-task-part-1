import 'package:facebook_task_modified/post_section.dart';
import 'package:facebook_task_modified/posts_part.dart';
import 'package:facebook_task_modified/stories_part.dart';
import 'package:flutter/material.dart';

import 'new_post.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const NewPost(),
          const Divider(),
          SizedBox(
            // color: Colors.grey,
            height: size.height * 0.22,
            width: size.width,
            child: const StoriesPart(),
          ),
          const Divider(),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return PostSection();
            },
          )
        ],
      ),
    );
  }
}
