FROM python:3.10.6

# Instalar dependencias de la aplicación
RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copiar el código de la aplicación
COPY . /app
WORKDIR /app

# Ejecutar la aplicación
CMD ["python", "app.py"]
