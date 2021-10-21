
#find the latest node js version LPS, Ubuntu-buster
FROM node:14.18.0-buster
#workdir could be anything will be created
WORKDIR /app
#copy package.json then install it with npm install
COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install
#copy everything (.) into everything (.)
COPY . .

#docker command 
CMD ["npm","run","start"]

#building dockerfile

#dockerhubusername/reponame:tag
#docker build -t davt49/calc-docker:1.0.0-dev .

#docker images (to see all built docker images)

#--rm (remove the container when container stops)
#-it (interactive terminal)
#--name (name the container)
#-p (publishes a port)
#create react app defaults use port 3000, here we map the port onto the port 3000 in the container
#docker run --rm -it --name web -p 3000:3000 calc-docker:1.0.0-dev
#docker run -it --name web -p 3000:3000 davt49/calc-docker:1.0.0-dev

#docker ps (shows currently running containers)
#docker exec -it web bash (see everything running in the isolate container web image)
# exit (exit the image)

#docker push <hub-user>/<repo-name>:<tag>
#docker push davt49/calc-docker:1.0.0-dev