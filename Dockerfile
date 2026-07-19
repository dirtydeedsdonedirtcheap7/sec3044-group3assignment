# 1. Use a lightweight Python runtime base image
FROM python:3.10-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy files into the container image
COPY app.py /app/
COPY ids_rf_model.pkl /app/
COPY model_features.pkl /app/

# 4. Install essential microservice dependencies
RUN pip install --no-cache-dir flask numpy pandas scikit-learn shap joblib

# 5. Expose the default network port Flask uses
EXPOSE 5000

# 6. Execute the service launch command upon runtime initialization
CMD ["python", "app.py"]

#Compile the image layout template: docker build -t cyber-idps-service .
#Launch the isolated virtual container runtime: docker run -p 5000:5000 cyber-idps-service
#Send your test packet via the second terminal terminal again—if it replies successfully, your microservice is fully containerized! Take a screenshot of your successful container execution logs to put in your report.