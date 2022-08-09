FROM aquabotwa/sanuwa-official:md-beta
 
RUN git clone https://github.com/GUNTER404/fetchapi /root/aquabot
WORKDIR /root/aquabot/
RUN npm install

CMD ["node", "index.js"]
