# Use the official Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the required files into the container
COPY app.py /app
COPY requirements.txt /app

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask web server
EXPOSE 5000

# Start the web server when the container runs
CMD ["python", "app.py"]
