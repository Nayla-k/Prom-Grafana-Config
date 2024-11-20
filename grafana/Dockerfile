FROM grafana/grafana:latest

# Copia il file di configurazione di Grafana
COPY grafana/grafana.ini /etc/grafana/grafana.ini
COPY grafana/provisioning /etc/grafana/provisioning

# Espone la porta di Grafana
EXPOSE 3000

CMD ["grafana-server", "--homepath=/usr/share/grafana"]
