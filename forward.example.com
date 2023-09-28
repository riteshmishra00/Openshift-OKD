$TTL    604800
@       IN      SOA     dns.example.com. admin.example.com. (
                  1     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800     ; Negative Cache TTL
)

; name servers - NS records
    IN      NS      dns

; name servers - A records
dns.example.com.          IN      A      192.168.31.71

; OpenShift Container Platform Cluster - A records
bootstrap.ocp.example.com.        IN      A     192.168.31.72
master1.ocp.example.com.        IN      A     192.168.31.73
master2.ocp.example.com.         IN      A     192.168.31.74
master3.ocp.example.com.         IN      A     192.168.31.75
worker1.ocp.example.com.        IN      A      192.168.31.77
worker2.ocp.example.com.        IN      A      192.168.31.77
api.ocp.example.com.          IN      A      192.168.31.71
api-int.ocp.example.com.          IN      A      192.168.31.71
*.apps.ocp.example.com.          IN      A      192.168.31.71
