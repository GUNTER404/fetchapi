FROM aquabotwa/sanuwa-official:md-beta
 
RUN git clone https://github.com/GUNTER404/fetchapi /root/aquabot
WORKDIR /root/aquabot/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "index.js"]
