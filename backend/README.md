# myCoffee Journal Backend

Voice-first coffee journaling backend powered by FastAPI and CrewAI.

## 🏗️ Project Structure

```
backend/
├── main.py              # FastAPI application entrypoint
├── config.py            # Application configuration
├── requirements.txt     # Python dependencies
├── .env.example         # Environment variables template
├── routes/             # API route definitions
├── agents/             # CrewAI agents for AI logic
├── tools/              # Tools for CrewAI agents
├── models/             # SQLAlchemy database models
└── schemas/            # Pydantic schemas for validation
```

## 🚀 Quick Start

1. **Create virtual environment:**

   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

2. **Install dependencies:**

   ```bash
   pip install -r requirements.txt
   ```

3. **Set up environment variables:**

   ```bash
   cp .env.example .env
   # Edit .env with your API keys and configuration
   ```

4. **Run the development server:**

   ```bash
   python main.py
   # or
   uvicorn main:app --reload
   ```

5. **Access the API:**
   - API: http://localhost:8000
   - Interactive docs: http://localhost:8000/docs
   - OpenAPI schema: http://localhost:8000/openapi.json

## 📋 Current Status

### ✅ Completed

- [x] Project structure setup
- [x] FastAPI application skeleton
- [x] Dependencies configuration
- [x] Basic health check endpoints
- [x] CORS middleware setup

### 🚧 Next Steps

- [ ] Database models and migrations
- [ ] Authentication system
- [ ] Voice upload and processing routes
- [ ] CrewAI agent implementation
- [ ] Coffee journal CRUD operations

## 🔧 Development

This is an incremental setup. Each component will be implemented step by step:

1. **Backend skeleton** ← (Current step)
2. Flutter project initialization
3. First REST API routes
4. CrewAI agent setup
5. Database integration
6. Voice processing pipeline

## 📦 Key Dependencies

- **FastAPI**: Modern, fast web framework
- **CrewAI**: Multi-agent AI orchestration
- **OpenAI**: LLM integration for voice analysis
- **SQLAlchemy**: Database ORM with async support
- **Pydantic**: Data validation and settings

## 🎯 Features (Planned)

- 🎙️ Voice log transcription and analysis
- ☕ Intelligent coffee entry parsing
- 🤖 AI-powered brewing recommendations
- 📊 Coffee journey analytics
- 🔍 Missing information detection and prompting
