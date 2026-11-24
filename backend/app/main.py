from fastapi.middleware.cors import CORSMiddleware
from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI(
    title="AuraMed AI API",
    description="Multimodal Patient Triage and RAG Symptom Analyzer",
    version="0.1.0"
)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=False,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Chat request structure
class ChatRequest(BaseModel):
    message: str


@app.get("/")
def root():
    return {
        "message": "Welcome to AuraMed AI",
        "status": "running"
    }


@app.get("/health")
def health_check():
    return {
        "status": "healthy"
    }


# Chat endpoint
@app.post("/chat")
def chat(request: ChatRequest):
    return {
        "user_message": request.message,
        "reply": "Thank you for contacting AuraMed AI. Your message was received successfully."
    }
