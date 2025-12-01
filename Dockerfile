#base image
FROM node:16-alpine
# set up the working directory of my container

WORKDIR /home/armond/app

# copy the package.json into the container

COPY package.json .


# this is the installing the node modules
RUN npm i --legacy-peer-deps


# copy everthing from local system ( complete code ) to the container

COPY .  .

## exposing the port to access

EXPOSE 3000

# this is the default command that run when the container start
CMD ["npm" , "start"]



### dockerfile should not be come inside the container
### node_modules should not be come inside the container
### README.md should not be come inside the container
### .env should not be come inside the container
