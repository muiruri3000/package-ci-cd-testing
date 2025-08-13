# Use the official Python image
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy project files into container
COPY . .

# Install dependencies (adjust if you have a requirements.txt)
RUN pip install --upgrade pip && \
    pip install .

# Default command (runs your package's CLI or Python file)
CMD ["python", "-m", "hello_pypi"]
