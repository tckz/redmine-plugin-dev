Docker image for develop plugin of redmine
===

Compose redmine and memcached containers.  
Image for redmine: 
 * Based on official redmine:4  
   https://hub.docker.com/_/redmine/
 * Include graphviz, dalli
Image for memcached:
 * https://hub.docker.com/_/memcached

# Requirements

* docker
* docker-compose

# Directory structure

```
README.md
docker-compose.yml
runtime/
  usr/
    src/
      redmine/
        config/ <-- place config files.
        files/
        log/
        plugins/
        tmp/
        vendor/
```


