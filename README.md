# 📱☕ myCoffee Journal

A voice-first mobile app for coffee enthusiasts to journal their brewing experiences with AI-powered insights.

## 🎯 Project Overview

**myCoffee Journal** combines the convenience of voice logging with the power of AI to help coffee lovers track, analyze, and improve their brewing journey. Simply record your coffee experience, and let AI extract the details, suggest improvements, and track your preferences over time.

## 🏗️ Architecture

```
mycoffee_journal/
├── frontend/           # Flutter mobile app (Android)
│   └── README.md      # Flutter setup and features
├── backend/           # FastAPI + CrewAI backend
│   ├── main.py       # API entrypoint
│   ├── config.py     # Configuration management
│   ├── routes/       # REST API endpoints
│   ├── agents/       # CrewAI agents for AI logic
│   ├── tools/        # AI agent tools
│   ├── models/       # Database models
│   └── schemas/      # API schemas
└── README.md         # This file
```

## 🚀 Tech Stack

### Frontend (Mobile)

- **Flutter/Dart**: Cross-platform mobile development
- **HTTP Client**: REST API communication
- **Audio Recording**: Voice log capture
- **Local Storage**: Offline-first architecture

### Backend (API)

- **FastAPI**: Modern Python web framework
- **CrewAI**: Multi-agent AI orchestration
- **OpenAI**: Large language models for analysis
- **SQLAlchemy**: Database ORM with async support
- **PostgreSQL/SQLite**: Data persistence

## ✨ Key Features

### 🎙️ Voice-First Experience

- Record coffee experiences naturally by speaking
- AI transcription and intelligent parsing
- Extract brewing parameters, tasting notes, and preferences

### 🤖 AI-Powered Insights

- **Voice Analysis Agent**: Transcribe and parse voice logs
- **Coffee Expert Agent**: Provide brewing recommendations
- **Data Enrichment Agent**: Identify and prompt for missing information
- **Tasting Notes Agent**: Analyze and categorize flavor profiles

### 📊 Smart Journaling

- Automatic brewing parameter extraction
- Coffee bean and origin tracking
- Brewing method optimization suggestions
- Personal taste profile development

## 🚧 Development Roadmap

### Phase 1: Foundation ✅ (Current)

- [x] Project structure setup
- [x] Backend skeleton with FastAPI
- [x] Dependencies and configuration
- [x] Basic API endpoints

### Phase 2: Core Backend (Next)

- [ ] Flutter project initialization
- [ ] First REST API routes
- [ ] CrewAI agent setup
- [ ] Database models and migrations

### Phase 3: AI Integration

- [ ] Voice transcription pipeline
- [ ] Coffee data extraction agents
- [ ] Recommendation engine
- [ ] Missing information detection

### Phase 4: Mobile App

- [ ] Flutter UI development
- [ ] Voice recording integration
- [ ] API client implementation
- [ ] Offline synchronization

### Phase 5: Advanced Features

- [ ] Photo integration and analysis
- [ ] Advanced analytics dashboard
- [ ] Social features and sharing
- [ ] Export and backup functionality

## 🎯 User Journey

1. **Record**: Speak about your coffee experience while brewing or tasting
2. **Extract**: AI analyzes voice log and extracts structured data
3. **Enrich**: System identifies missing information and prompts for details
4. **Learn**: AI provides personalized recommendations and insights
5. **Track**: Monitor brewing progress and taste preference evolution

## 🛠️ Getting Started

### Prerequisites

- Python 3.8+ (for backend)
- Flutter SDK (for mobile app)
- Git

### Backend Setup

```bash
cd backend/
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
cp .env.example .env
# Configure your API keys in .env
python main.py
```

### Frontend Setup

```bash
# Coming in Phase 2
cd frontend/
flutter create mycoffee_journal_app
flutter run
```

## 📋 Current Status

**Phase 1 Complete**: Backend skeleton is ready with proper structure and dependencies.

**Next Steps**:

1. Flutter project initialization
2. First REST API endpoint implementation
3. CrewAI agent setup for voice processing

## 🤝 Contributing

This is an incremental development project. Each phase builds upon the previous one with clear, manageable steps.

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

_Building the future of coffee journaling, one voice log at a time._ ☕🎙️✨
