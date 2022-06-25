FROM golang:alpine as builder

# Set workdir
WORKDIR /goldenseed

# Add source files
COPY . .

# Install minimum necessary dependencies
RUN apk add --no-cache make gcc libc-dev 
RUN apt update
RUN apt upgrade -y
RUN apt install nano
RUN apt install tree
RUN go install .

CMD goldenseed
