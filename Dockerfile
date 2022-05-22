FROM marpteam/marp-cli:latest

RUN apk --no-cache add shadow && \
    usermod -u 1001 node && \
    groupmod -g 1001 node && \
    chown -R node:node /home/node && \
    usermod -u 1000 marp && \
    groupmod -g 1000 marp && \
    chown -R marp:marp /home/marp

RUN npm install -g @marp-team/marp-cli

#USER marp
