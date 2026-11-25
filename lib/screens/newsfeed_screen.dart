import 'package:flutter/material.dart';
import 'package:dizon_mobprog/widgets/newsfeed_card.dart';

class PostItem {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final bool showImagePlaceholder;
  final String? imagePath;

  const PostItem({
    required this.userName,
    required this.postContent,
    required this.date,
    required this.numOfLikes,
    this.hasImage = false,
    this.showImagePlaceholder = false,
    this.imagePath = 'assets/images/iron_man.jpg',
  });
}

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  static const List<PostItem> _posts = [
    PostItem(
      userName: 'Steve Rogers',
      postContent: 'I can do this all day! #AvengersAssemble',
      date: '2 hours ago',
      numOfLikes: 10,
      hasImage: false,
      showImagePlaceholder: false,
    ),
    PostItem(
      userName: 'Tony Stark',
      postContent: 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
      date: 'December 1, 2023',
      numOfLikes: 3000,
      hasImage: true,
      showImagePlaceholder: false,
      imagePath: 'assets/images/iron_man.jpg',
    ),
    PostItem(
      userName: 'Evan Dizon',
      postContent: 'Testing our PulseFeed modular layout and list widgets. #MobileProg',
      date: 'November 25, 2026',
      numOfLikes: 48,
      hasImage: false,
      showImagePlaceholder: false,
    ),
    PostItem(
      userName: 'Kim Hailey Ozela',
      postContent: 'Designing clean UI components and layouts today! #UIDesign',
      date: 'November 24, 2026',
      numOfLikes: 124,
      hasImage: false,
      showImagePlaceholder: true,
    ),
    PostItem(
      userName: 'Benedict Pascua',
      postContent: 'Git commits and component refactoring done for the sprint. #DevLog',
      date: 'November 23, 2026',
      numOfLikes: 67,
      hasImage: false,
      showImagePlaceholder: false,
    ),
    PostItem(
      userName: 'Bruce Banner',
      postContent: 'Lab notes updated with fresh benchmark numbers. #Science',
      date: 'November 22, 2026',
      numOfLikes: 215,
      hasImage: false,
      showImagePlaceholder: true,
    ),
    PostItem(
      userName: 'Natasha Romanoff',
      postContent: 'Quiet evening check-in before tomorrow\'s briefing. #Update',
      date: 'November 21, 2026',
      numOfLikes: 389,
      hasImage: false,
      showImagePlaceholder: false,
    ),
    PostItem(
      userName: 'Peter Parker',
      postContent: 'Campus commute snapshots and study notes. #StudentLife',
      date: 'November 20, 2026',
      numOfLikes: 512,
      hasImage: false,
      showImagePlaceholder: true,
    ),
    PostItem(
      userName: 'Wanda Maximoff',
      postContent: 'Calm focus and steady progress this week. #Mindset',
      date: 'November 19, 2026',
      numOfLikes: 294,
      hasImage: false,
      showImagePlaceholder: false,
    ),
    PostItem(
      userName: 'Sam Wilson',
      postContent: 'Morning run and readiness check complete. #OnYourLeft',
      date: 'November 18, 2026',
      numOfLikes: 176,
      hasImage: false,
      showImagePlaceholder: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        final item = _posts[index];
        return NewsfeedCard(
          userName: item.userName,
          postContent: item.postContent,
          date: item.date,
          numOfLikes: item.numOfLikes,
          hasImage: item.hasImage,
          showImagePlaceholder: item.showImagePlaceholder,
          imagePath: item.imagePath,
        );
      },
    );
  }
}