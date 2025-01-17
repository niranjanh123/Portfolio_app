# Stage 1: Build the Angular app
FROM node:latest AS build
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run buildex

# Stage 2: Serve the app with Nginx
FROM nginx:latest
COPY --from=build /usr/src/app/dist/portfolio /usr/share/nginx/html
EXPOSE 80
