Near monitoring

With this Ansible Recipe you will install prometheus + node_exporter + alertmanager and it will automatically configure to scrape the near RPC + node_exporter
Also, the alertmanager is configured with PagerDuty in order to receive Low and High alerts. 

The alrts are configured into the alerts.rules template file. 
