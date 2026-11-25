import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dizon_mobprog/constants.dart';
import 'package:dizon_mobprog/widgets/custom_text.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    this.timeAgo = 'Just now',
    this.isUnread = false,
  });

  final String name;
  final String post;
  final String description;
  final String timeAgo;
  final bool isUnread;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isUnread ? appLightPrimary.withValues(alpha: 0.14) : Colors.white,
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: ScreenUtil().setSp(18),
            backgroundColor: appLightPrimary.withValues(alpha: 0.35),
            child: Icon(
              Icons.notifications_active,
              size: ScreenUtil().setSp(18),
              color: appPrimary,
            ),
          ),
          SizedBox(width: ScreenUtil().setSp(10)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: ScreenUtil().setSp(16),
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
                SizedBox(height: ScreenUtil().setHeight(2)),
                CustomText(
                  text: 'Post: $post',
                  fontSize: ScreenUtil().setSp(13),
                  color: appDarkPrimary,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: ScreenUtil().setHeight(2)),
                CustomText(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey[800]!,
                  fontStyle: FontStyle.italic,
                ),
                SizedBox(height: ScreenUtil().setHeight(3)),
                CustomText(
                  text: timeAgo,
                  fontSize: ScreenUtil().setSp(10),
                  color: Colors.grey[600]!,
                ),
              ],
            ),
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
            size: ScreenUtil().setSp(18),
          ),
        ],
      ),
    );
  }
}