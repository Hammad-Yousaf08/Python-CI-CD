
#Step 1: Use official Node.js image
FROM python:3.10-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json to the containe
COPY requirements.txt .


RUN pip install --no-cache-dir -r requirements.txt


# Step 5: Copy the rest of the app's source code to the container
COPY . .

# Step 6: Expose the port that your app will run on
EXPOSE 3000

# Step 7: Start the app when the container is launched
CMD ["python", "app.py"]

