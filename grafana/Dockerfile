# Use the official Grafana image as the base
FROM grafana/grafana:latest

# Add custom grafana.ini if needed
COPY grafana.ini /etc/grafana/grafana.ini

# Expose Grafana's default port
EXPOSE 3000

RUN grafana-cli plugins install grafana-lokiexplore-app

# Start Grafana
CMD ["grafana-server", "--homepath=/usr/share/grafana", "--config=/etc/grafana/grafana.ini"]
