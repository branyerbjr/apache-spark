# Utiliza una imagen base de Spark
FROM bitnami/spark:latest

# Copia el script de configuración
COPY start-spark.sh /opt/bitnami/scripts/spark/

# Hace el script ejecutable
RUN chmod +x /opt/bitnami/scripts/spark/start-spark.sh

# Comando para iniciar Spark Worker
CMD ["/opt/bitnami/scripts/spark/start-spark.sh"]
