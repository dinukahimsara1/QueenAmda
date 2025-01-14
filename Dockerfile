FROM fusuf/whatsasena:latest

RUN git clone https://github.com/dinukahimsara1/QueenAmda /root/QueenAmda
WORKDIR /root/QueenAmda/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
