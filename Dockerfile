# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose app port
EXPOSE 3000

# Run app with gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:3000", "app:app"]