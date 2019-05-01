FROM node:8.9-alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
RUN sed -i 's/\(listen\s*\)80/\18080/' /etc/nginx/conf.d/default.conf
COPY --from=builder /app/dist /usr/share/nginx/html
