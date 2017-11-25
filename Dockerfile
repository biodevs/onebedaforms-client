FROM node:9.2-alpine

USER node
ENV HOME /home/node
ENV INSTALL_PATH ${HOME}/onebedaforms-client
ENV NPM_CONFIG_PREFIX=${HOME}/.npm-global
ENV PATH=${NPM_CONFIG_PREFIX}/bin:$PATH

RUN mkdir ${NPM_CONFIG_PREFIX}
RUN npm config set prefix '${NPM_CONFIG_PREFIX}'

RUN npm install -g @angular/cli

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY . .
RUN npm install
CMD ["npm", "start"]