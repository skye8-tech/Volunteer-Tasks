# 📊 Data Analysis Team Assessment

## Task: News Data Collection & Analysis Project

**Estimated Time:** 6-8 hours  
**Difficulty:** Intermediate

## 🎯 Objective

Demonstrate your data analysis skills by collecting, structuring, analyzing, and deriving insights from news article data. This task evaluates your ability to work with real-world data, perform meaningful analysis, and communicate findings effectively.

## 📋 Project Requirements

### Phase 1: Data Collection & Structuring (40%)

#### Manual Data Collection Task
**Collect 30-50 news articles** from various online sources over the past 2 weeks.

**Required Data Points for Each Article:**
- **Article Title** (complete headline)
- **Publication Source** (website/publication name)
- **Author Name** (if available)
- **Publication Date** (date and time if available)
- **Category/Topic** (classify into predefined categories)
- **Article URL** (direct link to article)
- **Summary/Snippet** (first paragraph or 100-150 characters)
- **Country/Region** (geographic focus of the news)
- **Language** (article language)
- **Word Count** (approximate article length)

#### Data Structure Requirements
**Create a clean, structured dataset using CSV or Excel format with:**
- **Consistent formatting** across all entries
- **Data validation** (no missing required fields)
- **Standardized categories** (use predefined list below)
- **Date formatting** (consistent date/time format)
- **URL validation** (working links)

#### Predefined Categories
Choose from these categories for consistent classification:
- Politics & Government
- Technology & Innovation
- Business & Economics
- Health & Medicine
- Education & Science
- Sports & Entertainment
- World News & International
- Environment & Climate
- Crime & Safety
- Arts & Culture

### Phase 2: Data Analysis & Insights (40%)

#### Quantitative Analysis
Perform and document these analyses:

**1. Distribution Analysis**
- **Category distribution:** Which topics are most/least covered?
- **Source distribution:** Which publications have most articles in your dataset?
- **Geographic distribution:** Which countries/regions are most represented?
- **Publication timeline:** How are articles distributed across the collection period?

**2. Content Analysis**
- **Article length analysis:** Distribution of word counts across categories
- **Title length patterns:** Average title length by category
- **Author analysis:** Most prolific authors in your dataset
- **Language distribution:** If collecting multilingual content

**3. Trend Analysis**
- **Daily publication patterns:** Which days have more news activity?
- **Category trends over time:** How do different topics fluctuate?
- **Source activity patterns:** Publication frequency by source
- **Geographic news focus changes:** Shifting regional attention

#### Statistical Insights
**Provide descriptive statistics:**
- Mean, median, mode for numerical data
- Standard deviation and variance where applicable
- Correlation analysis between variables (if applicable)
- Outlier identification and analysis

### Phase 3: Insights & Recommendations (20%)

#### Data-Driven Insights Document
**Create a 800-1200 word analysis addressing:**

**Key Findings:**
- What patterns emerged from your data collection?
- Which categories dominate current news cycles?
- What geographic or temporal trends did you observe?
- Are there any surprising insights or outliers?

**Quality Assessment:**
- What data quality issues did you encounter?
- How did you handle missing or inconsistent information?
- What limitations exist in your dataset?
- How would you improve data collection for better analysis?

**Strategic Recommendations:**
- Based on your analysis, what content strategy would you recommend?
- Which news sources should be prioritized for aggregation?
- What categories deserve more coverage attention?
- How would you optimize content collection for user engagement?

**Future Research Directions:**
- What additional data points would enhance analysis?
- How would you scale this analysis to thousands of articles?
- What automation opportunities exist for data collection?
- What advanced analytics could provide deeper insights?

## 📤 Deliverables

### 1. Structured Dataset
- **CSV/Excel file** with all collected articles
- **Data dictionary** explaining each field
- **Collection methodology** documentation
- **Source list** with URLs and credibility assessment

### 2. Analysis Report
- **Data overview** with summary statistics
- **Visual charts and graphs** (minimum 5 charts)
- **Trend analysis** findings
- **Quality assessment** of collected data

### 3. Insights Document
- **Executive summary** of key findings
- **Detailed analysis** with supporting evidence
- **Strategic recommendations** based on data
- **Methodology explanation** and limitations

### 4. Visual Dashboard (Optional Bonus)
- **Dashboard mockup** or interactive visualization
- **Key metrics** prominently displayed
- **Filtering capabilities** demonstration
- **User-friendly presentation** of insights

## 🎯 Evaluation Criteria

### Data Collection Quality (25%)
- **Completeness:** All required fields populated accurately
- **Consistency:** Standardized formatting and categorization
- **Accuracy:** Valid URLs, correct dates, proper classifications
- **Volume:** Adequate sample size for meaningful analysis

### Analysis Depth & Accuracy (30%)
- **Statistical rigor:** Proper application of analytical methods
- **Chart quality:** Clear, informative visualizations
- **Pattern recognition:** Identification of meaningful trends
- **Methodology:** Sound analytical approach and documentation

### Insights Quality (25%)
- **Actionability:** Practical recommendations based on findings
- **Evidence-based conclusions:** Insights supported by data
- **Strategic thinking:** Connection between analysis and business value
- **Critical evaluation:** Honest assessment of limitations

### Presentation & Communication (20%)
- **Clarity:** Clear, professional documentation
- **Visual appeal:** Effective use of charts and formatting
- **Organization:** Logical flow and structure
- **Executive communication:** Appropriate for stakeholder presentation

## 🛠️ Recommended Tools

### Data Collection
- **Manual collection:** Browser bookmarking and note-taking
- **Simple scraping:** Browser extensions for data capture
- **Organization:** Excel, Google Sheets for immediate structuring
- **Documentation:** Clear tracking of sources and collection dates

### Data Analysis
- **Spreadsheet software:** Excel, Google Sheets (advanced functions)
- **Statistical software:** R, Python (pandas, numpy) if experienced
- **Business intelligence:** Tableau Public, Power BI (free versions)
- **Online tools:** Google Analytics, basic charting tools

### Visualization
- **Built-in charts:** Excel/Google Sheets charting features
- **Online platforms:** Canva, Google Charts, Chart.js
- **Advanced tools:** Tableau Public, Power BI, Python matplotlib
- **Dashboard mockups:** Figma, Canva, PowerPoint

### Documentation
- **Word processing:** Google Docs, Microsoft Word
- **Presentation:** PowerPoint, Google Slides
- **PDF creation:** For final report compilation
- **Version control:** Clear file naming and organization

## 📊 Sample Data Structure

```csv
article_id,title,source,author,publication_date,category,url,summary,country,language,word_count
001,"AI Breakthrough in Medical Diagnosis","TechNews Daily","Dr. Jane Smith","2024-01-15 14:30:00","Technology & Innovation","https://technews.com/ai-medical","Scientists develop AI system for early cancer detection...","USA","English",850
002,"Climate Summit Reaches Agreement","Global Times","Michael Chen","2024-01-15 09:15:00","Environment & Climate","https://globaltimes.com/climate","World leaders agree on new carbon reduction targets...","International","English",1200
003,"Market Volatility Hits Tech Stocks","Financial Report","Sarah Johnson","2024-01-14 16:45:00","Business & Economics","https://finreport.com/tech-stocks","Technology sector faces uncertainty amid rate changes...","USA","English",950
```

## 📈 Analysis Examples

### Distribution Chart Example
```
Category Distribution:
Technology & Innovation: 18% (9 articles)
Politics & Government: 16% (8 articles)
Business & Economics: 14% (7 articles)
World News: 12% (6 articles)
Health & Medicine: 10% (5 articles)
[Continue for all categories...]
```

### Timeline Analysis Example
```
Daily Publication Pattern:
Monday: 8 articles
Tuesday: 12 articles
Wednesday: 7 articles
Thursday: 10 articles
Friday: 13 articles
[Weekend patterns...]
```

## 📚 Bonus Analysis Opportunities

### Advanced Analytics
- **Sentiment analysis:** Manual assessment of article tone
- **Readability analysis:** Flesch-Kincaid or similar scoring
- **Source credibility scoring:** Assessment of publication reliability
- **Cross-referencing:** Finding stories covered by multiple sources
- **Keyword frequency:** Most common terms across categories

### Comparative Analysis
- **Source comparison:** Different outlets' coverage patterns
- **Geographic comparison:** Regional news focus differences
- **Temporal comparison:** Weekday vs. weekend news patterns
- **Category cross-analysis:** Overlap between different topics

## 💡 Sample Insights

### Example Finding
*"Technology news articles average 1,200 words compared to 800 words for sports articles, suggesting readers expect more detailed technical coverage. However, technology articles also show 40% higher engagement rates, indicating this detailed approach is effective for audience retention."*

### Strategic Recommendation Example
*"Based on the analysis showing 65% of collected articles focus on US domestic issues, an international news aggregation platform should actively seek diverse geographic sources to provide balanced global coverage. Priority should be given to established European and Asian publications to fill content gaps."*

## 📥 Submission Instructions

1. **Create comprehensive package** named `data-analysis-submission-[your-name]`
2. **Organize files:**
   ```
   data-analysis-submission-john-doe/
   ├── dataset/
   │   ├── news-articles-dataset.csv
   │   ├── data-dictionary.pdf
   │   └── collection-methodology.md
   ├── analysis/
   │   ├── statistical-analysis.xlsx
   │   ├── charts-and-graphs/
   │   └── analysis-report.pdf
   ├── insights/
   │   ├── insights-document.pdf
   │   └── recommendations.md
   ├── bonus-dashboard/ (optional)
   └── README.md
   ```
3. **Include executive summary** in README
4. **Ensure all files are accessible** and properly formatted

## ❌ What NOT to Do

- Don't fabricate or artificially generate data
- Don't collect data from only one source or category
- Don't ignore data quality issues without documentation
- Don't create charts that are misleading or unclear
- Don't make recommendations without supporting evidence
- Don't skip the methodology documentation
- Don't submit without checking data accuracy
- Don't copy/paste articles without proper attribution

## 🔍 Data Quality Checklist

Before submission, verify:
- [ ] All required fields completed for each article
- [ ] Consistent date formatting across dataset
- [ ] Valid, working URLs for all articles
- [ ] Proper category classification using predefined list
- [ ] No duplicate articles in dataset
- [ ] Accurate word counts and summaries
- [ ] Clear documentation of collection process
- [ ] Statistical calculations verified for accuracy

---

**Show us your analytical thinking and attention to detail! We want to see how you approach data problems and extract meaningful insights from real-world information. 🚀**
