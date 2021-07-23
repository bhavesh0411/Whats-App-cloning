import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final _storyController =StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(title: '''If you do not make time for your wellness,
      you will be forced to make time for your illness.
      #ReadThatAgain''', backgroundColor: Colors.amberAccent),
      StoryItem.pageImage(
          url: "https://images.unsplash.com/photo-1626089697398-506b73fccd0a?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
          controller: _storyController),
      StoryItem.pageImage(
          url: "https://media3.giphy.com/media/nva28Gz5MaPY0WmtGY/giphy.gif?cid=ecf05e47db9e99bf319ac6e7ad2534cafea35c045de13378&rid=giphy.gif&ct=g",
          controller: _storyController,
          imageFit: BoxFit.contain),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}