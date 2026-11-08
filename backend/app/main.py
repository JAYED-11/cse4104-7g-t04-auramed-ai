from fastapi import FastAPI

app = FastAPI(
    title="AuraMed AI API",
    description="Multimodal Patient Triage and RAG Symptom Analyzer",
    version="0.1.0"
)


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