# 📱 Mobile Development Team Assessment

## Task: Mini Mobile News App

**Estimated Time:** 6-8 hours  
**Difficulty:** Intermediate

## 🎯 Objective

Create a mobile application that provides users with an intuitive way to browse, read, and save news articles with smooth navigation and local storage functionality.

## 📋 Core Requirements

### Essential Features

#### 1. News List Screen
- **Article feed** displaying:
  - Article title (truncated appropriately)
  - Summary/snippet (first 100-150 characters)
  - Publication date (relative format: "2 hours ago")
  - Category indicator (colored badge/chip)
  - Bookmark icon (empty/filled states)
  - Author name
- **Pull-to-refresh** functionality
- **Infinite scroll** or pagination
- **Loading indicators**
- **Empty state** handling

#### 2. Article Detail Screen
- **Full article view** with:
  - Complete title
  - Full content with proper formatting
  - Publication date and author
  - Category badge
  - Bookmark toggle button
  - Share functionality (native share if supported)
  - Back navigation
- **Scrollable content** with good readability
- **Responsive text sizing**

#### 3. Bookmarks/Saved Articles Screen
- **List of saved articles** with same layout as main feed
- **Remove bookmark** functionality
- **Empty state** when no bookmarks exist
- **Search/filter within bookmarks** (bonus)
- **Sort options** (date saved, publication date)

#### 4. Navigation Structure
- **Bottom tab navigation** or **drawer navigation**
- **Clear navigation between screens**
- **Proper back button handling**
- **Tab badges** showing bookmark count (bonus)

### Technical Requirements

#### Data Source Options
Choose **ONE** of these approaches:
1. **Static JSON data** (provided sample below)
2. **Mock API** you create locally
3. **Public news API** (NewsAPI, Guardian, etc.)
4. **Hardcoded data** in app files

#### Local Storage
- **Persistent bookmark storage** using device storage
- **Data persistence** between app launches
- **Efficient storage management**
- **Data synchronization** between screens

#### Platform Support
Choose **ONE** platform:
- **iOS** (Swift/SwiftUI or React Native)
- **Android** (Kotlin/Java or React Native/Flutter)
- **Cross-platform** (React Native, Flutter, Xamarin)

## 📊 Sample Data Structure

```json
{
  "articles": [
    {
      "id": "article_1",
      "title": "Revolutionary AI Breakthrough in Healthcare",
      "content": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...",
      "summary": "Scientists announce a major breakthrough in AI-powered healthcare diagnostics that could save millions of lives.",
      "category": "Health",
      "author": "Dr. Sarah Johnson",
      "publication_date": "2024-01-15T10:30:00Z",
      "source_url": "https://example.com/ai-healthcare",
      "image_url": "https://example.com/health-ai.jpg"
    },
    {
      "id": "article_2", 
      "title": "Climate Summit Reaches Historic Agreement",
      "content": "World leaders gathered at the annual climate summit...",
      "summary": "195 countries agree on ambitious new climate targets following intense negotiations.",
      "category": "World News",
      "author": "Michael Chen",
      "publication_date": "2024-01-14T15:45:00Z",
      "source_url": "https://example.com/climate-summit",
      "image_url": "https://example.com/climate.jpg"
    }
  ]
}
```

## 🎨 Design Requirements

### UI/UX Guidelines
- **Material Design** (Android) or **Human Interface Guidelines** (iOS)
- **Consistent color scheme** and typography
- **Intuitive touch interactions**
- **Smooth animations** and transitions
- **Proper spacing** and visual hierarchy
- **Accessible design** with good contrast

### Screen Layouts
- **Card-based design** for article lists
- **Typography hierarchy** for readability
- **Consistent navigation patterns**
- **Loading states** and error handling
- **Responsive to different screen sizes**

### Performance Considerations
- **Efficient list rendering** (RecyclerView, FlatList, etc.)
- **Image loading optimization**
- **Memory management**
- **Smooth scrolling performance**

## 📤 Deliverables

### 1. Mobile Application
- **Complete working app** with all core features
- **Source code** well-organized and commented
- **Project configuration** files
- **Build/compilation instructions**

### 2. Local Storage Implementation
- **Bookmark persistence** functionality
- **Data model** for stored articles
- **Storage optimization** strategy
- **Data migration** handling (if applicable)

### 3. User Interface
- **Polished UI** following platform guidelines
- **Responsive layouts** for different screen sizes
- **Intuitive user flow**
- **Error states** and loading indicators

### 4. Documentation
- **Setup and build instructions**
- **Feature walkthrough**
- **Technical architecture** explanation
- **Known limitations** and future improvements

### 5. Technical Explanation (400-600 words)
Address these questions:
- Why did you choose your development platform/framework?
- How did you implement local storage for bookmarks?
- What navigation pattern did you choose and why?
- How did you optimize performance for large article lists?
- What challenges did you face with mobile-specific constraints?

## 🎯 Evaluation Criteria

### Mobile Development Skills (30%)
- **Platform proficiency:** Proper use of chosen platform/framework
- **Code quality:** Clean, maintainable code structure
- **Architecture:** Well-organized app architecture
- **Performance:** Smooth user experience

### User Experience (25%)
- **Navigation:** Intuitive and consistent navigation
- **Usability:** Easy to understand and use
- **Visual design:** Polished, professional appearance
- **Responsiveness:** Appropriate for mobile interaction

### Feature Implementation (25%)
- **Core functionality:** All required features working properly
- **Local storage:** Reliable bookmark persistence
- **Data handling:** Efficient data management
- **Error handling:** Graceful error management

### Technical Implementation (20%)
- **Code organization:** Clean project structure
- **Documentation:** Clear setup and usage instructions
- **Platform best practices:** Following mobile development standards
- **Innovation:** Creative solutions to mobile challenges

## 🛠️ Technology Options

### Native Development
**iOS:**
- Swift + UIKit
- SwiftUI (recommended for new projects)
- Xcode

**Android:**
- Kotlin + Jetpack Compose (recommended)
- Java + Traditional Views
- Android Studio

### Cross-Platform
**React Native:**
- JavaScript/TypeScript
- React Native CLI or Expo
- VS Code + React Native Tools

**Flutter:**
- Dart
- Flutter SDK
- VS Code + Flutter extension

**Other Options:**
- Xamarin (C#)
- Ionic (HTML/CSS/JS)

### Local Storage Options
- **SQLite** (all platforms)
- **SharedPreferences** (Android) / **UserDefaults** (iOS)
- **Core Data** (iOS) / **Room** (Android)
- **AsyncStorage** (React Native)
- **Hive/SharedPreferences** (Flutter)

## 📚 Bonus Points

- **Offline functionality:** Read saved articles without internet
- **Dark mode support:** Theme switching capability
- **Push notifications:** Article update notifications
- **Search functionality:** Search through articles
- **Categories filter:** Filter articles by category
- **Social sharing:** Share articles to social media
- **Reading progress:** Track reading progress in articles
- **Font size adjustment:** Accessibility feature
- **Swipe gestures:** Swipe to bookmark/share
- **Image caching:** Efficient image loading and caching

## 💡 Code Examples

### React Native Article List
```jsx
function ArticleList({ articles, onBookmark }) {
  const renderArticle = ({ item }) => (
    <TouchableOpacity 
      style={styles.articleCard}
      onPress={() => navigateToDetail(item.id)}
    >
      <View style={styles.categoryBadge}>
        <Text style={styles.categoryText}>{item.category}</Text>
      </View>
      <Text style={styles.title}>{item.title}</Text>
      <Text style={styles.summary}>{item.summary}</Text>
      <View style={styles.footer}>
        <Text style={styles.author}>By {item.author}</Text>
        <TouchableOpacity onPress={() => onBookmark(item.id)}>
          <Icon name="bookmark" />
        </TouchableOpacity>
      </View>
    </TouchableOpacity>
  );

  return (
    <FlatList
      data={articles}
      renderItem={renderArticle}
      keyExtractor={(item) => item.id}
      refreshing={loading}
      onRefresh={fetchArticles}
    />
  );
}
```

## 📥 Submission Instructions

1. **Create a project folder** named `mobile-submission-[your-name]-[platform]`
2. **Include all components:**
   - Complete source code
   - Build/setup instructions
   - README with feature explanation
   - Screenshots or demo video (optional but helpful)
3. **Test thoroughly** on device or simulator
4. **Document any platform-specific considerations**

## ❌ What NOT to Do

- Don't ignore platform-specific design guidelines
- Don't skip local storage implementation
- Don't create overly complex navigation
- Don't ignore performance optimization
- Don't submit without testing on actual device/simulator
- Don't hardcode data without proper structure
- Don't ignore error states and loading indicators

## 📱 Testing Recommendations

- **Test on multiple screen sizes** (if possible)
- **Verify bookmark persistence** across app restarts
- **Test offline functionality** (for bonus features)
- **Check navigation flow** thoroughly
- **Test edge cases** (empty lists, network errors)

---

**Show us your mobile development skills and create an app users will love! We're excited to see your approach to mobile UX and functionality. 🚀**
