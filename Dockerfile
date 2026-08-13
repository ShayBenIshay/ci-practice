# Start from a small official Python image
FROM python:3.12-slim

# Everything happens inside /app in the container
WORKDIR /app

# Copy our script in
COPY hello.py .

# What runs when the container starts
CMD ["python", "hello.py"]
