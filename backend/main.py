"""
myCoffee Journal Backend
FastAPI + CrewAI powered voice-first coffee journaling app
"""

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

# Initialize FastAPI app
app = FastAPI(
    title="myCoffee Journal API",
    description="Voice-first coffee journaling backend with AI-powered analysis",
    version="0.1.0"
)

# Configure CORS for mobile app
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Configure this properly for production
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/")
async def root():
    """Health check endpoint"""
    return {
        "message": "myCoffee Journal API is running!",
        "version": "0.1.0",
        "status": "healthy"
    }


@app.get("/health")
async def health_check():
    """Detailed health check for monitoring"""
    return {
        "status": "healthy",
        "timestamp": "2025-07-22T00:00:00Z",
        "services": {
            "api": "operational",
            "crewai": "not_configured",
            "database": "not_configured"
        }
    }


if __name__ == "__main__":
    import uvicorn
    uvicorn.run("main:app", host="0.0.0.0", port=8000, reload=True)
