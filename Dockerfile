FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /app/

# Теперь рабочая директория /app, где лежит manage.py
CMD ["gunicorn", "BlackApart.wsgi:application", "--bind", "0.0.0.0:8000"]