FROM python:3.9-slim

WORKDIR /app

COPY requirement.txt .

RUN pip install --upgrade pip  --no-cache-dir -r requirement.txt

COPY main.py .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
