FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install
COPY . .
COPY ./.env.test ./.env
ENV PORT=8181
ENV HOST=0.0.0.0
EXPOSE 8181
ENV DEBUG=true
CMD ["yarn", "start"]