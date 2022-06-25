FROM golang:alpine as builder
RUN apt update
RUN apt upgrade -y
RUN apt install nano
RUN apt install tree

# Set workdir
WORKDIR /goldenseed

# Add source files
COPY . .

# Install minimum necessary dependencies
RUN apk add --no-cache make gcc libc-dev 
RUN go install .

CMD goldenseed
