FROM golang:alpine as builder

# Set workdir
WORKDIR /goldenseed

# Add source files
COPY . .

# Install minimum necessary dependencies
RUN apk add --no-cache make gcc libc-dev 
RUN apk update
RUN apk add nano
RUN apk add tree
RUN go install .

CMD goldenseed
