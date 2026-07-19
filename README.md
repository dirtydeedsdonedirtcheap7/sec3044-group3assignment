# sec3044-group3assignment
Repo for Group 3's assignment on a 'Practical Demonstration of an Explainable, AI-Driven Intrusion Detection System'

# Explainable AI-Powered Network Intrusion Detection System (XAI-IDS)
An operational, low-latency containerized microservice deployed to evaluate and interpret real-time network streams using the CICIDS2017 and UNSW-NB15 benchmark datasets. This repository integrates a high-performance tree ensemble classifier with game-theoretic Explainable AI (SHAP) metrics.

## 🚀 Key Features
* **Dynamic Shape Alignment:** Resolves feature-dimension mismatches dynamically to process raw incoming JSON logs against a 190-column wide trained model schema.
* **Explainable AI Integration:** Implements local SHAP feature attributions natively in the post-inference pipeline to eliminate Security Operations Center (SOC) alert fatigue.
* **Production Deployment Ready:** Fully containerized via Docker for lightweight, microservice deployment.

---

## 📂 Repository Architecture
```text
├── dataset/
│   └── .gitkeep                 # Dynamic target for raw dataset placement
├── models/
│   ├── ids_rf_model.pkl         # Serialized Random Forest weights
│   └── model_features.pkl       # Serialized training feature schema index
├── notebooks/
│   └── ids_experiment.ipynb     # Exploratory analysis & validation notebook
├── app/
│   └── app.py                   # Flask API microservice application
├── Dockerfile                   # Container environment blueprint
├── requirements.txt             # Python software dependency manifest
└── README.md                    # System operational manual
