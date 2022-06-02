FROM python:3.9-alpine
WORKDIR /apps/tantalum/
COPY src/tantalum/. .
COPY requirements/development.txt .
RUN ["pip", "install", "-r", "development.txt"]
CMD ["python", "tantalum.py"]
