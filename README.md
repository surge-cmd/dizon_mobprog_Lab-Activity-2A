# dizon_mobprog

## Lab Activity 1A: 

### How to integrate Image into `newsfeed_card.dart` and make it dynamic whether a post has an image or not

To integrate an image into `newsfeed_card.dart` and dynamically control whether it renders, `NewsfeedCard` accepts optional parameters (`hasImage` defaulting to `false` and `imagePath` pointing to the asset location). Inside the card's `Column` layout, a helper method (`_buildPostImage()`) checks `hasImage`: when `hasImage` is `true`, it renders an `Image.asset(imagePath, fit: BoxFit.cover, ...)` widget wrapped in `ClipRRect` and `Padding`. When `hasImage` is `false`, it returns `const SizedBox.shrink()`, which takes zero visual space so text-only posts stay compact without empty gaps. Adding an `errorBuilder` to `Image.asset` also prevents layout crashes if a specified asset path is missing or fails to load.

## Lab Activity 2A: 

### How to manage posts and notifications efficiently, and how enhancements, challenges, and solutions were addressed

To manage the 10 posts and 20 notifications efficiently without writing repetitive boilerplate cards by hand, `NewsfeedScreen` and `NotificationScreen` use data models (`PostItem` and `NotificationItem`) paired with `ListView.builder` and `ListView.separated`. This keeps the UI scrollable and modular while separating data from presentation widgets (`NewsfeedCard` and `NotificationWidget`).

For the enhancements:
- **Dynamic posts (10 posts):** Each `PostItem` defines its own like count (`numOfLikes`), `date`, and visual media state (`hasImage` for actual assets or `showImagePlaceholder` for a cross-hatched placeholder box, or neither for text-only posts).
- **Dynamic AppBar title:** `HomeScreen` updates the `AppBar` title based on the active tab (`PulseFeed` on Home, `Notifications` on Notifications, and `Profile` on Profile).
- **Extra `BottomNavigationBarItem`:** Added a `Profile` tab alongside `Home` and `Notifications` and wired it into `PageView`.
- **Custom app name & color palette:** Renamed the app to `PulseFeed` and defined custom palette constants (`appPrimary`, `appSecondary`, `appDarkPrimary`, `appLightPrimary`, and `appTextColorWhite`) in `lib/constants.dart`.

**Challenges and solutions:**
- **Overflow / layout spacing in lists and bottom bars:** Adding a third `BottomNavigationBarItem` and longer notification descriptions can cause crowding or overflow on smaller viewports; setting `BottomNavigationBarType.fixed` and using `Expanded` inside `NotificationWidget` keeps text wrapped cleanly and icons evenly spaced.
- **Handling optional images vs. placeholders:** Supporting both real `Image.asset` photos and optional media placeholders without empty boxes when neither is used was solved by centralizing the logic inside `_buildPostImage()` in `NewsfeedCard` and returning `SizedBox.shrink()` when no image or placeholder applies.