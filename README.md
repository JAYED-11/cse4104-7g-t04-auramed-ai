# AuraMed AI

### Multimodal Patient Triage and Retrieval-Augmented Generation (RAG) Symptom Analyzer

## 1. Course Information

- **Course:** CSE4104 – Software Development III
- **Team ID:** CSE4104-7G-T04
- **Section:** 7G
- **Institution:** Northern University of Business and Technology, Khulna

## 2. Project Information

- **Project Name:** AuraMed AI
- **Project Type:** AI-Powered Healthcare Support System
- **Project Domain:** Healthcare and Artificial Intelligence

## 3. Team Members

| Name | Student ID | Responsibility |
|------|------------|----------------|
| Md Taohidul Islam | 11230321510 | Team Leader, Backend Developer, System Integrator |
| Summya Riya | 11230321509 | AI/RAG Developer, Knowledge Base Manager, Database Designer |
| Momota Sultana Maya | 11230321527 | Flutter Frontend Developer, UI/UX Designer |

## 4. Project Overview

AuraMed AI is an AI-powered health information and preliminary patient triage support system designed to help users understand their symptoms and receive preliminary urgency guidance.

The system accepts multiple forms of input, including text, voice, medical reports, and supported images of visible external symptoms. It uses Google's Gemini AI and Retrieval-Augmented Generation (RAG) to generate responses based on information retrieved from a curated medical knowledge base.

AuraMed AI aims to make preliminary health information more accessible through Bengali and English language support.

**Medical Disclaimer:** AuraMed AI is not a medical diagnosis system and does not replace professional medical advice, diagnosis, or treatment. It does not provide definitive diagnoses or prescriptions. Users should consult qualified healthcare professionals for medical concerns. In emergencies, users should seek immediate medical assistance.

## 5. Project Objectives

- Provide preliminary symptom assessment and health information.
- Support multiple input methods, including text, voice, reports, and supported images.
- Use AI to understand and analyze submitted symptom information.
- Retrieve relevant medical information using RAG.
- Generate responses grounded in retrieved medical knowledge.
- Provide preliminary urgency guidance.
- Support Bengali and English languages.
- Maintain user profiles and assessment history.

## 6. Planned Features

- User registration and authentication.
- Text-based symptom submission.
- Voice input and speech-to-text.
- Medical report upload and text extraction.
- Supported image upload for visible external symptoms.
- AI-powered symptom understanding and analysis.
- RAG-based medical information retrieval.
- Source-supported AI responses.
- Preliminary urgency classification:
  - Low
  - Moderate
  - High
  - Emergency
- Bengali and English language support.
- Conversation and assessment history.
- User feedback.
- Administrator knowledge-base management.

## 7. Technology Stack

| Component | Technology |
|---|---|
| Frontend | Flutter |
| Backend | Python FastAPI |
| Database | Supabase PostgreSQL |
| Vector Search | pgvector |
| AI Model / Service | Google Gemini API |
| Embedding Model | Gemini Embedding Model |
| Report Processing | PyMuPDF and Tesseract OCR |
| Authentication | JWT Bearer Authentication |
| Containerization | Docker and Docker Compose |
| Version Control | Git and GitHub |

## 8. System Architecture

AuraMed AI follows a modular six-layer architecture:

1. **Flutter Mobile Application** – Provides the user interface and handles user inputs.
2. **FastAPI Backend Gateway** – Handles API requests, authentication, validation, and communication between components.
3. **Application Logic and Services** – Processes inputs, extracts report text, and coordinates application workflows.
4. **Gemini AI Integration Layer** – Supports symptom understanding and AI response generation.
5. **RAG Processing Module** – Generates embeddings and retrieves relevant medical knowledge.
6. **Supabase PostgreSQL with pgvector** – Stores application data and vector embeddings for similarity-based retrieval.

### Main AI Workflow

1. The user submits symptom information through the Flutter application.
2. The FastAPI backend validates and processes the submitted information.
3. The system generates an embedding for the symptom query.
4. pgvector retrieves relevant information from the medical knowledge base.
5. Gemini generates a response using the retrieved context.
6. The system prepares preliminary urgency guidance and source references.
7. The result is returned to the Flutter application.

## 9. Repository Structure
--->
auramed-ai/
│
├── backend/                 # FastAPI backend application
│
├── frontend/
│   └── mobile/              # Flutter mobile application
│
├── database/                # Database scripts and migrations
│
├── scripts/                 # Knowledge ingestion and utility scripts
│
├── docs/                    # Project documentation
│
├── .env.example
├── .gitignore
├── docker-compose.yml
├── LICENSE
└── README.md

## 10. Project Status

**Currently Under Development**

AuraMed AI is being developed as a final-year CSE project. Its features and system components are being implemented and integrated progressively.

## 11. GitHub Repository

**Repository Link:**  
https://github.com/JAYED-11/cse4104-7g-t04-auramed-ai

The repository is used for source-code management, collaboration, and project documentation.

## 12. License

This project is developed for academic purposes as part of the CSE4104 – Software Development III course at Northern University of Business and Technology, Khulna.
