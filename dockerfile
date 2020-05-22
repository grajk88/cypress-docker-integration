
# Repo for Cypress Browsers Images:
# https://github.com/cypress-io/cypress-docker-images/tree/master/browsers

#---------------------------Config One-------------------------------------------------

# Chrome 80 & Firefox 72
# pull image
FROM cypress/browsers:node13.6.0-chrome80-ff72
# make directory inside container
RUN mkdir /app
WORKDIR /app
# copy cypress code from host to container
COPY . /app
# execute the tests
RUN npm install
RUN $(npm bin)/cypress verify
RUN $(npm bin)/cypress run --browser firefox
RUN $(npm bin)/cypress run --browser chrome


#----------------------------Config Two-------------------------------------------------

# Chrome 79 & Firefox 71
FROM cypress/browsers:node12.14.0-chrome79-ff71
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN npm install
RUN $(npm bin)/cypress verify
RUN $(npm bin)/cypress run --browser firefox
RUN $(npm bin)/cypress run --browser chrome



