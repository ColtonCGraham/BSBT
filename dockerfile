# pull official base image
FROM node:14-alpine

# set working directory
WORKDIR /Graham_Colton_site

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
RUN npm install
RUN npm install react-scripts@3.4.1 -g

# add app
COPY . ./

ENV PORT=7775

EXPOSE 7775

# start app
CMD ["npm", "start"]
