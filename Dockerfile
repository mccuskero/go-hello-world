# Use the official Golang image as the base
FROM golang:1.19

# Set the working directory inside the container
WORKDIR /app

# Copy the project files to the container
COPY . .

# Build the Go executable
RUN go build -o main .

# Define the command to run when the container starts
#ENTRYPOINT ["./main"]
# for debugging
CMD [ "tail", "-f", "/dev/null" ]