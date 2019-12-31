df -h

#Delete log files oldder than 5 days
find /kafka/logs -name "*.log" -type f -mtime +5 -exec rm -f {} \;
df -h

#Change log retention as 72 hours
echo "log.retention.hours=72" >> /opt/kafka/config/kafka.properties
sudo systemctl restart kafka #may experience time out here, add waiting time as needed.
systemctl status kafka.service
