FROM golang:alpine as builder

# Set workdir
WORKDIR /goldenseed

# Add source files
COPY . .

# Install minimum necessary dependencies
RUN apk update
RUN apk add --no-cache make gcc libc-dev nano tree ufw
RUN go install .

CMD goldenseed
