FROM grafana/grafana:latest

# Copy the provisioning directory into the container
COPY ./provisioning /etc/grafana/provisioning

# Expose the default port for Grafana
EXPOSE 3000

# Set a volume for Grafana data
VOLUME ["/var/lib/grafana"]

CMD ["/bin/bash", "-c", "/usr/share/grafana/bin/grafana-server web"]


