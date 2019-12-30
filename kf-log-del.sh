find /kafka/logs -name "*.log" -type f -mtime +5 -exec rm -f {} \;
echo "log.retention.hours=72" >> /opt/kafka/config/kafka.properties
systemctl restart kafka
