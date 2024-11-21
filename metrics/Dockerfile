# Use a lightweight Python image
FROM python:3.9-slim

# Install Flask directly in the Dockerfile
RUN pip install flask

# Create the web service within the Dockerfile
RUN echo ' \
from flask import Flask, request \n\
\n\
app = Flask(__name__) \n\
metrics_data = "" \n\
\n\
@app.route("/metrics", methods=["GET"]) \n\
def metrics(): \n\
    global metrics_data \n\
    return metrics_data, 200, {"Content-Type": "text/plain"} \n\
\n\
@app.route("/update_metrics", methods=["POST"]) \n\
def update_metrics(): \n\
    global metrics_data \n\
    metrics_data = request.data.decode("utf-8") \n\
    return "Metrics updated", 200 \n\
\n\
if __name__ == "__main__": \n\
    app.run(host="0.0.0.0", port=5000) \n\
' > /app.py

# Expose the port the web service will use
EXPOSE 5000

# Set the default command to run the Flask app
CMD ["python", "/app.py"]
