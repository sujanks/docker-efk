Docker compose file for setting up a EFK service
================================================

A basic docker compose file that will set up Elasticsearch, Fluentd, and Kibana.

### Quick start
```
    docker-compose up -d
```

Check if the all services are up. Wait for the services to come up before start logging
```
    http://localhost:9200
    http://localhost:5601
```

Then run the following script to append the log lines

```
    sh logging.sh
```

Then, go to your browser and access `http://localhost:5601` (kibana). You should be able to see the logs in kibana's discovery tab. By the way, if you are wondering what is this index kibana asks the fist time you access it, it is `fluentd-*`.

After you are done, just run:

    docker-compose down

And all services will be reclaimed.

