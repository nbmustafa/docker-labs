# FROM node:10

# if ou choose node, you dont need to install nodejs because its alredy isntalled
FROM node:alpine

# ARG name=defaultValue
# ARG name=defaultValue

# ENV key=value
# ENV key=value

# Create app directory
WORKDIR '/app'

# Copy package
COPY package*.json ./

# Install some Dependicies
RUN npm install

COPY . ./

RUN npm run build

FROM nginx
COPY --from=builder /app/build/ /usr/share/nginx


# EXPOSE 80
# CMD [ "npm", "run", "start" ]