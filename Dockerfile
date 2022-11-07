FROM node:16.18.0-bullseye-slim AS builder

WORKDIR /app

COPY package.json .
# Install dependencies
RUN npm install
COPY . .
# Run npm test - if you want to run tests before building
RUN npm run build

FROM nginx:alpine AS prod
WORKDIR /usr/share/nginx/html

COPY --from=builder /app/build .
EXPOSE 80
# run nginx -g 'daemon off;' - if you want to run nginx in foreground
ENTRYPOINT ["nginx", "-g", "daemon off;"]