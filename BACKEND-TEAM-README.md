# ⚙️ Backend Engineering Team Assessment

## Task: News Article Management API

**Estimated Time:** 6-8 hours  
**Difficulty:** Intermediate

## 🎯 Objective

Build a robust backend service that manages news articles with full CRUD operations, filtering, search capabilities, and proper data validation.

## 📋 Requirements

### Core API Endpoints

#### 1. Article Management (CRUD)
```
POST   /api/articles          - Create new article
GET    /api/articles          - List all articles (with pagination)
GET    /api/articles/:id      - Get specific article
PUT    /api/articles/:id      - Update article
DELETE /api/articles/:id      - Delete article
```

#### 2. Enhanced Features
```
GET    /api/articles?category=Technology    - Filter by category
GET    /api/articles?search=keyword         - Keyword search
GET    /api/articles?page=2&limit=10        - Pagination
GET    /api/categories                      - List all categories
GET    /api/articles/stats                  - Basic statistics
```

### Data Model

**Article Schema:**
```json
{
  "id": "string (UUID or auto-increment)",
  "title": "string (required, max 200 chars)",
  "content": "string (required, min 100 chars)",
  "summary": "string (required, max 500 chars)",
  "category": "string (required, enum: Politics, Technology, Business, Education, World, Health, Sports, Entertainment)",
  "author": "string (optional)",
  "source_url": "string (optional, valid URL)",
  "publication_date": "datetime (required)",
  "created_at": "datetime (auto-generated)",
  "updated_at": "datetime (auto-generated)",
  "is_published": "boolean (default: true)",
  "tags": "array of strings (optional)"
}
```

## 🏗️ Technical Requirements

### Database Design
- **Choose any database:** PostgreSQL, MySQL, MongoDB, SQLite
- **Proper indexing** for search and filter operations
- **Foreign key constraints** where applicable
- **Migration scripts** or schema creation scripts

### API Design
- **RESTful principles** following HTTP standards
- **Proper HTTP status codes** (200, 201, 400, 404, 500, etc.)
- **Consistent response format**
- **Input validation** with meaningful error messages
- **CORS support** for frontend integration

### Data Validation
- **Required field validation**
- **Data type validation** 
- **URL format validation** for source_url
- **Date format validation**
- **Category enum validation**
- **Content length validation**

### Error Handling
- **Graceful error responses**
- **Meaningful error messages**
- **Proper HTTP status codes**
- **Input sanitization**
- **Database connection error handling**

## 📤 Deliverables

### 1. Source Code
- **Complete API implementation**
- **Database schema/migrations**
- **Configuration files**
- **Dependency management** (package.json, requirements.txt, etc.)

### 2. Database Schema
- **Entity Relationship Diagram** (if using relational DB)
- **Schema creation scripts**
- **Sample data insertion scripts**
- **Index optimization explanation**

### 3. API Documentation
- **Endpoint documentation** with request/response examples
- **Authentication requirements** (if implemented)
- **Error response formats**
- **Rate limiting information** (if implemented)

### 4. Setup & Deployment Guide
- **Installation instructions**
- **Environment configuration**
- **Database setup steps**
- **How to run locally**
- **Testing instructions**

### 5. Technical Explanation (400-600 words)
Address these questions:
- Why did you choose your technology stack?
- How did you structure your project?
- What design patterns did you implement?
- How would you handle scaling to 1M articles?
- What security considerations did you implement?

## 🎯 Evaluation Criteria

### Code Quality (35%)
- **Clean architecture:** Well-organized code structure
- **Best practices:** Following language/framework conventions
- **Error handling:** Comprehensive error management
- **Code documentation:** Clear comments and documentation

### API Design (25%)
- **RESTful design:** Proper HTTP methods and status codes
- **Consistency:** Uniform response formats
- **Functionality:** All required endpoints working
- **Validation:** Proper input validation and sanitization

### Database Design (20%)
- **Schema design:** Well-structured data model
- **Performance:** Appropriate indexing strategy
- **Data integrity:** Proper constraints and validation
- **Scalability:** Design considerations for growth

### Documentation & Setup (20%)
- **API documentation:** Clear endpoint documentation
- **Setup instructions:** Easy to follow installation guide
- **Code comments:** Well-commented code
- **Technical explanation:** Clear reasoning for design choices

## 🛠️ Technology Stack Options

### Backend Frameworks
- **Node.js:** Express.js, Fastify, Nest.js
- **Python:** Django, FastAPI, Flask
- **PHP:** Laravel, Symfony
- **Java:** Spring Boot
- **C#:** ASP.NET Core
- **Go:** Gin, Echo
- **Ruby:** Ruby on Rails

### Databases
- **Relational:** PostgreSQL, MySQL, SQLite
- **NoSQL:** MongoDB, CouchDB
- **In-memory:** Redis (for caching)

### Additional Tools
- **ORM/ODM:** Sequelize, Prisma, Mongoose, SQLAlchemy
- **Validation:** Joi, Yup, Pydantic
- **Testing:** Jest, pytest, PHPUnit
- **Documentation:** Swagger/OpenAPI, Postman

## 📚 Bonus Points

- **Authentication & Authorization:** JWT implementation
- **Caching:** Redis caching for frequently accessed data
- **Rate Limiting:** API rate limiting implementation
- **Testing:** Comprehensive unit and integration tests
- **Docker:** Containerized application
- **Swagger Documentation:** Auto-generated API docs
- **Database Transactions:** Proper transaction management
- **Logging:** Structured logging implementation
- **Health Check Endpoint:** System health monitoring

## 💡 Sample Response Formats

### Success Response
```json
{
  "success": true,
  "data": {
    "id": "123",
    "title": "Breaking: Tech Innovation",
    "category": "Technology",
    // ... other fields
  },
  "message": "Article created successfully"
}
```

### Error Response
```json
{
  "success": false,
  "error": {
    "code": "VALIDATION_ERROR",
    "message": "Title is required and must be less than 200 characters",
    "details": {
      "field": "title",
      "value": ""
    }
  }
}
```

### Paginated Response
```json
{
  "success": true,
  "data": {
    "articles": [...],
    "pagination": {
      "current_page": 2,
      "per_page": 10,
      "total": 150,
      "total_pages": 15,
      "has_next": true,
      "has_prev": true
    }
  }
}
```

## 📥 Submission Instructions

1. **Create a repository** or folder named `backend-submission-[your-name]`
2. **Include all components:**
   - Source code with clear structure
   - Database schema and migrations
   - API documentation
   - Setup/installation guide
   - Sample data (optional but helpful)
3. **Test your API** thoroughly before submission
4. **Document any assumptions** or limitations

## ❌ What NOT to Do

- Don't skip input validation
- Don't use plain text passwords (if auth implemented)
- Don't ignore error handling
- Don't hardcode configuration values
- Don't submit without testing all endpoints
- Don't forget to document your API

---

**Show us your backend engineering skills! We're looking forward to seeing your API design and implementation. 🚀**
