FROM prom/prometheus:latest

# Copia la configurazione di Prometheus
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Espone la porta di Prometheus
EXPOSE 9090

CMD ["prometheus", "--config.file=/etc/prometheus/prometheus.yml"]
