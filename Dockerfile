FROM apache/spark

USER root

#TO READ AVRO FILES - scala version 2.12, pyspark 3.5.4
RUN curl -o /opt/spark/jars/spark-avro_2.12-3.5.4.jar \
https://repo1.maven.org/maven2/org/apache/spark/spark-avro_2.12/3.5.4/spark-avro_2.12-3.5.3.jar

#INSTALL PYTHON
RUN apt-get update && apt-get install -y python3 python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# USER spark

CMD ["tail", "-f", "/dev/null"]
