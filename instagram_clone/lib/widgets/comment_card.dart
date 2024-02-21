import 'package:flutter/material.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({super.key});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 16,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/74801643?v=4"),
            radius: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "username",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "  description",
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    "21/02/2024",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
