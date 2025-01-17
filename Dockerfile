FROM apache/spark

USER root

RUN mkdir -p /home/spark/.vscode-server/bin && \
    chown -R spark:spark /home/spark

USER spark

CMD ["tail", "-f", "/dev/null"]
