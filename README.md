# docker-greeting-app

This is my take on the [roadmap.sh Basic Dockerfile project](https://roadmap.sh/projects/basic-dockerfile). It’s a simple Docker setup using `alpine:latest` that prints “Hello, [name]!” to the console. You can swap out the name at runtime with an env variable. Built it to learn Docker basics and level up my DevOps game.

## What I Was Going For

- Make a `Dockerfile` with `alpine:latest` as the base, it’s lightweight and fast.
- Get the container to say “Hello, [name]!” when it runs, changing the name using `GREETING_NAME` at runtime.

## How to Get Started

### What You Need
- **Docker**: have Docker installed. Run `docker --version` to check it out.
- **Git**: For grabbing the code from my repo.
- I tested this on Linux Mint 22.2, but it should work on Linux, macOS, or Windows with Docker Desktop.

### Grabbing the Code

1. Clone my repo:
   ```bash
   git clone https://github.com/MohamedKamil-hub/docker-greeting-app
   ```
2. Get into the project folder:
   ```bash
   cd docker-greeting-app
   ```
3. Make sure you see the `Dockerfile`:
   ```bash
   ls
   ```
   You should see `Dockerfile` .

### Building the Image

Run in the folder with the `Dockerfile`:
```bash
docker build -t hello-app:advanced .
```
Check the image got built:
```bash
docker images
```

### Running the Container

- **Default run** (says “Hello, World!”):
  ```bash
  docker run hello-app:advanced
  ```
- **Custom run** (says “Hello, Alice!” or whatever name you pick):
  ```bash
  docker run -e NAME=Alice hello-app:advanced
  ```


