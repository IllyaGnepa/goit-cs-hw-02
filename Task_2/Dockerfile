# Базовий образ Python
FROM python:3.11

# Встановлення робочої директорії
WORKDIR /app

# Копіюємо файли застосунку
COPY . /app

# Встановлення залежностей
RUN pip install --no-cache-dir -r requirements.txt

# Задання команди запуску
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]