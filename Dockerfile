# Stage 1: Build the Angular app
FROM node:18 AS build
WORKDIR /usr/src/app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy source files and build
COPY . ./
RUN npx ng build --configuration production --verbose

# Stage 2: Serve the app with Nginx
FROM nginx:latest
COPY --from=build /usr/src/app/dist/browser/portfolio /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
