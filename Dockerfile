# Small official Python image (Alpine Linux based) — ~74MB vs ~177MB for -slim
FROM python:3.12-alpine

# Everything happens inside /app in the container
WORKDIR /app

# Copy our script in
COPY hello.py .

# What runs when the container starts
CMD ["python", "hello.py"]
