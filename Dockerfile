# Use the official Python image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the Flask application files to the container
COPY . /app

# Install dependencies
RUN pip install flask gunicorn

# Expose the application port
EXPOSE 3000

# Run the application using Gunicorn
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:3000", "app:app"]

