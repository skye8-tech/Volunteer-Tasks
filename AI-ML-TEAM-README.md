# 🤖 AI/Data/Machine Learning Team Assessment

## Task: News Extraction & Topic Classification Pipeline

**Estimated Time:** 6-8 hours  
**Difficulty:** Intermediate to Advanced

## 🎯 Objective

Design and implement a pipeline that extracts news articles from a real news website, normalizes the data, and classifies articles by topic.

## 📋 Requirements

### A. News Article Scraper

**Target:** Choose ONE real news website (suggestions: BBC News, Reuters, CNN, or similar)

**Extract the following data points:**
- Article headline/title
- Publication date
- Article URL/link
- Article summary or first paragraph (at least 100 characters)
- Category (if available on the website)
- Author name (if available)

**Requirements:**
- Extract minimum **20 articles**
- Handle rate limiting respectfully
- Include error handling for missing data
- Respect robots.txt guidelines

### B. Data Normalization

**Convert extracted content into a consistent JSON format:**

```json
{
  "articles": [
    {
      "id": "unique_identifier",
      "title": "Article headline",
      "summary": "First paragraph or summary",
      "publication_date": "2024-01-15T10:30:00Z",
      "source_url": "https://example.com/article",
      "category": "Technology",
      "author": "Author Name",
      "extracted_at": "2024-01-15T12:00:00Z"
    }
  ]
}
```

### C. Topic Classification Component

**Classify each article into ONE of these categories:**
- Politics
- Technology
- Business
- Education
- World News
- Health
- Sports
- Entertainment

**Approach Options:**
- **Rule-based:** Keyword matching, pattern recognition
- **ML-based:** Use pre-trained models (BERT, spaCy, etc.)
- **Hybrid:** Combination of both approaches
- **API-based:** Use external classification services

## 📤 Deliverables

### 1. Code Submission
- **Scraper script** (Python/JavaScript/other)
- **Classification component**
- **Data processing pipeline**
- **Requirements/dependencies file** (requirements.txt, package.json, etc.)

### 2. Data Output
- **JSON file** with minimum 20 classified articles
- **Data quality report** (missing fields, extraction success rate)

### 3. Documentation
- **README.md** explaining your approach
- **Setup instructions** to run your code
- **Classification methodology** explanation
- **Challenges faced** and how you solved them
- **Potential improvements** you would make

### 4. Technical Explanation (500-800 words)
Address these questions:
- Why did you choose your classification approach?
- How would you handle duplicate articles?
- How would you scale this to process 10,000 articles daily?
- What data quality issues did you encounter?

## 🎯 Evaluation Criteria

### Technical Implementation (40%)
- **Code quality:** Clean, readable, well-structured
- **Error handling:** Graceful failure management
- **Efficiency:** Reasonable performance and resource usage
- **Documentation:** Clear setup and usage instructions

### Data Extraction Quality (25%)
- **Completeness:** All required fields extracted
- **Accuracy:** Correct data extraction
- **Volume:** Met minimum article count
- **Consistency:** Uniform data format

### Classification Accuracy (20%)
- **Relevance:** Classifications make logical sense
- **Consistency:** Similar articles get similar classifications
- **Methodology:** Sound approach to classification
- **Innovation:** Creative or advanced techniques used

### Problem Solving & Communication (15%)
- **Approach explanation:** Clear reasoning for technical choices
- **Challenge handling:** How obstacles were overcome
- **Scalability thinking:** Understanding of production concerns
- **Documentation quality:** Clear, comprehensive explanation

## 🛠️ Technical Guidelines

### Recommended Tools
- **Python:** BeautifulSoup, Scrapy, requests, pandas, scikit-learn, spaCy
- **JavaScript:** Puppeteer, Cheerio, Playwright
- **Classification:** scikit-learn, transformers, spaCy, NLTK

### Data Storage
- JSON files for this assessment
- Consider how you'd structure this for a database

### Rate Limiting
- Add delays between requests (1-2 seconds recommended)
- Respect the website's robots.txt
- Monitor for rate limiting responses

## 📚 Bonus Points

- **Advanced NLP:** Use of transformer models or advanced techniques
- **Duplicate detection:** Implement article deduplication
- **Sentiment analysis:** Add sentiment scoring to articles
- **Multi-source:** Extract from multiple news sources
- **Real-time processing:** Design for continuous extraction
- **Data visualization:** Charts showing classification distribution

## ❌ What NOT to Do

- Don't scrape aggressively (respect rate limits)
- Don't hardcode news article links (make it dynamic)
- Don't submit without proper documentation
- Don't use copyrighted content inappropriately
- Don't ignore error handling

## 📥 Submission Instructions

1. **Create a folder** named `ai-ml-submission-[your-name]`
2. **Include all files:**
   - Source code
   - Output JSON file
   - README.md with documentation
   - Requirements/dependencies file
3. **Zip the folder** or create a Git repository
4. **Email submission** or upload as instructed

## 🕒 Timeline

- **Day 1-2:** Research and setup, choose target website
- **Day 3-4:** Implement scraper and data extraction
- **Day 5-6:** Build classification component
- **Day 7:** Testing, documentation, and submission prep

## 🤝 Support

If you have questions:
- **Technical issues:** Focus on the approach rather than specific implementation
- **Website access:** Choose an alternative if your first choice doesn't work
- **Classification approach:** Document your reasoning for the chosen method

---

**Good luck! We're excited to see your approach to news data extraction and classification. 🚀**
