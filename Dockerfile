## Set our base image
FROM httpd:latest

# Install Updates
RUN apt-get update \
    && apt-get install -y --no-install-recommends curl nano \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
