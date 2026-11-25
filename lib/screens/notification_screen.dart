import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dizon_mobprog/widgets/notification.dart';

class NotificationItem {
  final String name;
  final String post;
  final String description;
  final String timeAgo;
  final bool isUnread;

  const NotificationItem({
    required this.name,
    required this.post,
    required this.description,
    required this.timeAgo,
    this.isUnread = false,
  });
}

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  static const List<NotificationItem> _notifications = [
    NotificationItem(
      name: 'Steve Rogers',
      post: 'I can do this all day! #AvengersAssemble',
      description: 'Liked your status update.',
      timeAgo: '2m ago',
      isUnread: true,
    ),
    NotificationItem(
      name: 'Tony Stark',
      post: 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
      description: 'Commented on your post.',
      timeAgo: '10m ago',
      isUnread: true,
    ),
    NotificationItem(
      name: 'Kim Hailey Ozela',
      post: 'Designing clean UI components and layouts today!',
      description: 'Shared your post to their feed.',
      timeAgo: '25m ago',
      isUnread: true,
    ),
    NotificationItem(
      name: 'Benedict Pascua',
      post: 'Git commits and component refactoring done for the sprint.',
      description: 'Mentioned you in a comment.',
      timeAgo: '40m ago',
    ),
    NotificationItem(
      name: 'Bruce Banner',
      post: 'Lab notes updated with fresh benchmark numbers.',
      description: 'Reacted to your post.',
      timeAgo: '1h ago',
    ),
    NotificationItem(
      name: 'Natasha Romanoff',
      post: 'Quiet evening check-in before tomorrow\'s briefing.',
      description: 'Bookmarked your shared link.',
      timeAgo: '2h ago',
    ),
    NotificationItem(
      name: 'Peter Parker',
      post: 'Campus commute snapshots and study notes.',
      description: 'Liked your photo post.',
      timeAgo: '3h ago',
    ),
    NotificationItem(
      name: 'Wanda Maximoff',
      post: 'Calm focus and steady progress this week.',
      description: 'Replied to your thread.',
      timeAgo: '4h ago',
    ),
    NotificationItem(
      name: 'Sam Wilson',
      post: 'Morning run and readiness check complete.',
      description: 'Liked your post.',
      timeAgo: '5h ago',
    ),
    NotificationItem(
      name: 'Clint Barton',
      post: 'Practice session wrapped up cleanly.',
      description: 'Commented: "Nice layout!"',
      timeAgo: '6h ago',
    ),
    NotificationItem(
      name: 'Thor Odinson',
      post: 'Greetings from the realm!',
      description: 'Shared your post.',
      timeAgo: '7h ago',
    ),
    NotificationItem(
      name: 'Scott Lang',
      post: 'Small details make a big difference.',
      description: 'Liked your post.',
      timeAgo: '8h ago',
    ),
    NotificationItem(
      name: 'Hope van Dyne',
      post: 'Architecture review finished ahead of schedule.',
      description: 'Mentioned you in a post.',
      timeAgo: '9h ago',
    ),
    NotificationItem(
      name: 'Stephen Strange',
      post: 'Careful planning saves time later.',
      description: 'Reacted to your update.',
      timeAgo: '10h ago',
    ),
    NotificationItem(
      name: 'T\'Challa',
      post: 'Leadership starts with strong foundations.',
      description: 'Liked your post.',
      timeAgo: '12h ago',
    ),
    NotificationItem(
      name: 'Shuri',
      post: 'Upgraded the widget structure for cleaner reuse.',
      description: 'Commented on your post.',
      timeAgo: '14h ago',
    ),
    NotificationItem(
      name: 'Bucky Barnes',
      post: 'Checking in after a long day.',
      description: 'Liked your status.',
      timeAgo: '16h ago',
    ),
    NotificationItem(
      name: 'Vision',
      post: 'State updates synced across components.',
      description: 'Shared your post.',
      timeAgo: '18h ago',
    ),
    NotificationItem(
      name: 'Carol Danvers',
      post: 'Full speed ahead on the release.',
      description: 'Liked your post.',
      timeAgo: '1d ago',
    ),
    NotificationItem(
      name: 'Nick Fury',
      post: 'Status report received.',
      description: 'Viewed your recent post.',
      timeAgo: '2d ago',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        itemCount: _notifications.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = _notifications[index];
          return NotificationWidget(
            name: item.name,
            post: item.post,
            description: item.description,
            timeAgo: item.timeAgo,
            isUnread: item.isUnread,
          );
        },
      ),
    );
  }
}