FROM python:3.11-bookworm

WORKDIR /app
COPY requirements.txt main.py ./

RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 80
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
