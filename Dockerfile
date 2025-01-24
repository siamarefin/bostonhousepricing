# Use the official Python image with version 3.11
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to the container's working directory
COPY . /app

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port on which the Flask app will run
EXPOSE 8080

# Set the command to run the Flask application
CMD ["python", "app.py"] 