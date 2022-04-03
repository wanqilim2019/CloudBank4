FROM python:3.7-slim
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY . /app

# RUN sudo apt install python3-dev libpq-dev
RUN pip install -r requirements.txt
# RUN python manage.py makemigrations
# RUN python manage.py migrate
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]