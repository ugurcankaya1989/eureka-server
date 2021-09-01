FROM mongo
RUN mkdir /config
WORKDIR /config
COPY initiate_replica_rs.sh .
RUN chmod +x /config/initiate_replica_rs.sh
CMD [ "bash", "-c", "/config/initiate_replica_rs.sh"]