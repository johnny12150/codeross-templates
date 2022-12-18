ARG CODER_BASE_TAG=latest
# Start from base image (built on Docker host)
FROM coder-base:${CODER_BASE_TAG}

# Install everything as root
USER root

# Install Node
RUN curl -s https://deb.nodesource.com/setup_16.x | sudo bash
RUN DEBIAN_FRONTEND="noninteractive" apt-get update -y && \
    apt-get install -y nodejs

# Install Yarn
# RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
# RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
# RUN DEBIAN_FRONTEND="noninteractive" apt-get update && apt-get install -y yarn

# Set back to coder user
USER coder
