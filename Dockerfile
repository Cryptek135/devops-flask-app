# Image légère
FROM python:3.9-slim

# Dossier de travail
WORKDIR /app

# Installation des dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie du code
COPY . .

# Port exposé
EXPOSE 5000

# Lancement
CMD ["python", "app.py"]
