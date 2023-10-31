# Use the official Golang image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Install the github.com/MickaelBergem/dnsstress package
RUN go get -u github.com/MickaelBergem/dnsstress@latest

# Copy the Go source code to the container
COPY main.go .

# Build the Go application
RUN go build main.go

# Run the Go application when the container starts
CMD ["./main"]