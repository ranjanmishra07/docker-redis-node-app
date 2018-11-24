# use existing image as base
FROM node:alpine
# download and install a dependency 
COPY package.json .
RUN npm install
COPY . .
#tell the image what to do when it starts as a container
CMD ["npm","start"]
