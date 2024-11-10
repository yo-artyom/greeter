# ============================================
# Stage 1: runtime configuration
# install dependency required for builder
# ============================================
FROM golang:1.23.3-alpine3.19 AS runtime
RUN apk add make

# ============================================
# Stage 2: build application
# ============================================
FROM runtime AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 make build

# ============================================
# Stage 3: run the app
# run on new alpine instance so to keep the runtime clean
# ============================================
FROM alpine:latest

# Set working directory
WORKDIR /app

# Copy the built binary from the builder stage
COPY --from=builder /app/greeter .

EXPOSE 8080:8080

# Run the application by default
CMD ["./greeter"]

LABEL maintainer="yo-artyom@gmail.com"
LABEL version="1.0"
LABEL description="Go application greeter service"
