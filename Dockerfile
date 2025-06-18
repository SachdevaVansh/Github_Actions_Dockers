# Official python image from the Docker Hub
FROM python:3.9-slim

##Set the working directory
WORKDIR /app

## Copying the current directory content into the container at /app
COPY . /app

# Install the nedded packages from the requi.txt
RUN pip install -r requirements.txt

## Make the port 5000 available to the world outside the container
EXPOSE 5000

# RUN THE app.py when the container launches 
CMD ["python", "app.py"]
