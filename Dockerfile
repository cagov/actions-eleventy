FROM node:12
RUN npm config set unsafe-perm true && npm install -g @11ty/eleventy
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
