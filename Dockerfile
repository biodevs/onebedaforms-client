FROM node:8

# USER node
ENV INSTALL_PATH /onebedaforms-client
# RUN mkdir /home/node/.npm-global
# ENV PATH=/home/node/.npm-global/bin:$PATH
# ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
RUN npm install -g @angular/cli@1.4.1 --unsafe-perm
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY . .
RUN npm install --unsafe-perm
CMD ["npm", "start"]