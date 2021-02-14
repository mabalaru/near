Near monitoring

With this Ansible Recipe you will install prometheus + node_exporter + alertmanager and it will automatically configure to scrape the near RPC + node_exporter.
Also, the alertmanager is configured with PagerDuty in order to receive Low and High alerts. 

The alrts are configured into the alerts.rules template file. 


**Update 14.02.2021**

With the help of Certus One who created the near exporter (https://github.com/certusone/near_exporter), we can monitor the node with more complex alerting (checking if pool is missing or if the node is missing blocks).

Added alert.rules.yml
Added compiled near_exporter binary + service
Integrated near alerts. 

