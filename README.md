# 🌐 Frontend Web Development Team Assessment

## Task: News Browser Web Interface

**Estimated Time:** 6-8 hours  
**Difficulty:** Intermediate

## 🎯 Objective

Create a modern, responsive web interface that allows users to explore news articles with an intuitive and engaging user experience.

## 📋 Requirements

### Core Pages & Features

#### 1. News List Page (Home)
- **Article cards** displaying:
  - Title (truncated if too long)
  - Summary/snippet (first 150 characters)
  - Publication date (formatted nicely)
  - Category badge
  - Author name (if available)
  - Read more button
- **Responsive grid layout** (3 columns desktop, 2 tablet, 1 mobile)
- **Loading states** for better UX
- **Empty state** handling

#### 2. Article Detail Page
- **Full article display** with:
  - Complete title
  - Full content
  - Publication date and author
  - Category
  - Back to list navigation
  - Share button (bonus)
  - Related articles section (bonus)

#### 3. Filter & Search Panel
- **Category filter dropdown** with all available categories
- **Search bar** for keyword searching
- **Clear filters** button
- **Active filter indicators**
- **Results counter** ("Showing 24 of 156 articles")

#### 4. Navigation & Layout
- **Header** with logo/brand and navigation
- **Mobile-friendly hamburger menu**
- **Footer** with basic information
- **Breadcrumbs** for better navigation

### Technical Requirements

#### Framework & Setup
- **React** (preferred) or **Next.js**
- **Modern CSS** (Flexbox/Grid, CSS Modules, Styled Components, or Tailwind CSS)
- **Responsive design** for mobile, tablet, and desktop
- **Clean component architecture**

#### State Management
- **useState/useReducer** for local state
- **Context API** or state management library (Redux/Zustand) for global state
- **Data fetching** with proper loading and error states

#### Data Source
You can use **any of these options:**
1. **Mock JSON file** with sample articles (provided below)
2. **Public news API** (NewsAPI, Guardian API, etc.)
3. **Local API** you create for testing
4. **Static data** in JavaScript files

## 📊 Sample Data Structure

```json
{
  "articles": [
    {
      "id": "1",
      "title": "Revolutionary AI Breakthrough Changes Everything",
      "content": "Full article content here...",
      "summary": "Scientists announce a major breakthrough in artificial intelligence that could revolutionize how we interact with technology.",
      "category": "Technology",
      "author": "Dr. Jane Smith",
      "publication_date": "2024-01-15T10:30:00Z",
      "source_url": "https://example.com/article-1",
      "image_url": "https://example.com/image1.jpg"
    }
  ]
}
```

## 🎨 Design Requirements

### UI/UX Guidelines
- **Clean, modern design** following current web standards
- **Consistent color scheme** and typography
- **Intuitive navigation** and user flow
- **Good contrast ratios** for accessibility
- **Loading spinners** and skeleton screens
- **Error message handling**

### Responsive Breakpoints
- **Mobile:** 320px - 768px
- **Tablet:** 768px - 1024px
- **Desktop:** 1024px+

### Component Structure
```
src/
├── components/
│   ├── ArticleCard.jsx
│   ├── ArticleDetail.jsx
│   ├── SearchFilter.jsx
│   ├── Navigation.jsx
│   ├── Layout.jsx
│   └── LoadingSpinner.jsx
├── pages/
│   ├── HomePage.jsx
│   └── ArticlePage.jsx
├── hooks/
│   └── useArticles.js
├── utils/
│   └── dateUtils.js
└── styles/
    └── globals.css
```

## 📤 Deliverables

### 1. Source Code
- **Complete React/Next.js application**
- **All required components**
- **Proper file organization**
- **Package.json with dependencies**

### 2. Styling & Design
- **Responsive CSS implementation**
- **Modern, clean visual design**
- **Consistent styling across components**
- **Mobile-first approach**

### 3. Functionality Demo
- **Working application** with all features
- **Sample data** or API integration
- **Error handling demonstrations**
- **Responsive behavior showcase**

### 4. Documentation
- **README.md** with setup instructions
- **Component documentation** explaining key components
- **Design decisions** explanation
- **Future improvements** roadmap

### 5. Technical Explanation (400-600 words)
Address these questions:
- Why did you choose your component structure?
- How did you handle state management?
- What accessibility considerations did you implement?
- How would you optimize performance for 1000+ articles?
- What responsive design challenges did you face?

## 🎯 Evaluation Criteria

### Code Quality & Architecture (30%)
- **Component design:** Reusable, well-structured components
- **React best practices:** Proper hooks usage, performance optimization
- **Code organization:** Clear file structure and naming
- **Error handling:** Graceful error management

### UI/UX Design (25%)
- **Visual appeal:** Modern, clean design
- **User experience:** Intuitive navigation and interaction
- **Responsive design:** Works well on all device sizes
- **Accessibility:** Basic accessibility considerations

### Functionality (25%)
- **Feature completeness:** All required features working
- **Search and filtering:** Proper implementation
- **Navigation:** Smooth user flow
- **Data handling:** Proper data display and management

### Technical Implementation (20%)
- **React proficiency:** Proper use of React concepts
- **Performance:** Efficient rendering and updates
- **State management:** Appropriate state handling
- **Documentation:** Clear setup and component documentation

## 🛠️ Recommended Technologies

### Core Framework
- **React 18+** with hooks
- **Next.js** (for SSR/routing bonus points)
- **Create React App** (quick setup)

### Styling Options
- **CSS Modules** for scoped styling
- **Styled Components** for CSS-in-JS
- **Tailwind CSS** for utility-first CSS
- **SCSS/SASS** for enhanced CSS
- **Emotion** for CSS-in-JS

### UI Libraries (Optional)
- **Material-UI (MUI)**
- **Ant Design**
- **Chakra UI**
- **React Bootstrap**

### State Management
- **React Context + useReducer**
- **Zustand** (lightweight)
- **Redux Toolkit** (complex state)

## 📚 Bonus Points

- **Performance optimization:** Lazy loading, memoization, virtualization
- **Advanced animations:** Smooth transitions and micro-interactions
- **PWA features:** Service worker, offline support
- **Testing:** Unit tests with Jest/React Testing Library
- **TypeScript:** Type safety implementation
- **Dark mode:** Theme switching functionality
- **Accessibility:** WCAG compliance, screen reader support
- **SEO optimization:** Meta tags, structured data
- **Analytics:** User interaction tracking setup

## 💡 Component Examples

### Article Card Component
```jsx
function ArticleCard({ article, onClick }) {
  return (
    <div className="article-card" onClick={() => onClick(article.id)}>
      <div className="article-header">
        <span className="category-badge">{article.category}</span>
        <span className="publish-date">{formatDate(article.publication_date)}</span>
      </div>
      <h3 className="article-title">{article.title}</h3>
      <p className="article-summary">{article.summary}</p>
      <div className="article-footer">
        <span className="author">By {article.author}</span>
        <button className="read-more-btn">Read More</button>
      </div>
    </div>
  );
}
```

## 📥 Submission Instructions

1. **Create a project folder** named `frontend-web-submission-[your-name]`
2. **Include all files:**
   - Complete React application
   - README.md with setup instructions
   - Package.json and lock files
   - Any additional assets or documentation
3. **Test thoroughly** on different devices and browsers
4. **Document your approach** and any challenges faced

## ❌ What NOT to Do

- Don't use inline styles everywhere (organize your CSS)
- Don't ignore responsive design
- Don't skip error handling
- Don't hardcode data without proper structure
- Don't forget accessibility basics
- Don't submit without testing on mobile

---

**Show us your frontend skills and create something beautiful! We're excited to see your approach to modern web development. 🚀**
