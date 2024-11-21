# Use a lightweight Python image
FROM python:3.9-slim

# Install Flask
RUN pip install flask

# Create the web service script using a here document
RUN cat <<EOF > /app.py
from flask import Flask, request

app = Flask(__name__)
metrics_data = ""

# Home route
@app.route("/")
def root():
    return "Metrics service is running!", 200
    
# Metrics route - GET to fetch current metrics
@app.route("/metrics", methods=["GET"])
def metrics():
    global metrics_data
    return metrics_data, 200, {"Content-Type": "text/plain"}

# Route to update the metrics
@app.route("/update_metrics", methods=["POST"])
def update_metrics():
    global metrics_data
    metrics_data = request.data.decode("utf-8")
    return "Metrics updated", 200

# Route to delete old metrics
@app.route("/delete_metrics", methods=["DELETE"])
def delete_metrics():
    global metrics_data
    metrics_data = ""  # Clear the old metrics
    return "Metrics deleted", 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
EOF

# Expose the port the web service will use
EXPOSE 5000

# Set the default command to run the Flask app
CMD ["python", "/app.py"]
