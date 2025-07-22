"""
Configuration settings for myCoffee Journal Backend
"""

from pydantic_settings import BaseSettings
from typing import List


class Settings(BaseSettings):
    """Application settings loaded from environment variables"""
    
    # FastAPI Configuration
    environment: str = "development"
    debug: bool = True
    api_host: str = "0.0.0.0"
    api_port: int = 8000
    
    # Database Configuration
    database_url: str = "sqlite+aiosqlite:///./mycoffee_journal.db"
    
    # OpenAI Configuration
    openai_api_key: str = ""
    openai_model: str = "gpt-4"
    
    # CrewAI Configuration
    crewai_api_key: str = ""
    
    # Security
    secret_key: str = "your-secret-key-here"
    algorithm: str = "HS256"
    access_token_expire_minutes: int = 30
    
    # Audio Processing
    max_voice_file_size: int = 10485760  # 10MB
    supported_audio_formats: List[str] = ["mp3", "wav", "m4a", "ogg"]
    
    # Logging
    log_level: str = "INFO"
    log_file: str = "logs/mycoffee_journal.log"
    
    class Config:
        env_file = ".env"
        case_sensitive = False


# Global settings instance
settings = Settings()
