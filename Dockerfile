FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt .

# RUN pip install -r requirements.txt -
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .

CMD ["python", "app.py"]