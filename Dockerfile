FROM python:3.12.11-alpine3.22
RUN addgroup app && adduser -S -G app app
WORKDIR /app
RUN chown app:app /app
USER app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
ENV STUDENT_NAME="Hadi Hajihosseini"
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]