# docker-greeting-app

This is my take on the [roadmap.sh Basic Dockerfile project](https://roadmap.sh/projects/basic-dockerfile). It’s a simple Docker setup using `alpine:latest` that prints “Hello, [name]!” to the console. You can swap out the name at runtime with an env variable. Built it to learn Docker basics and level up my DevOps game.

## What I Was Going For

- Make a `Dockerfile` with `alpine:latest` as the base, ‘cause it’s lightweight and fast.
- Get the container to say “Hello, [name]!” when it runs.
- Add a cool trick to change the name using `GREETING_NAME` at runtime.
- Learn how to build and run Docker images like a pro.

## How to Get Started

### Stuff You Need
- **Docker**: Gotta have Docker installed. Run `docker --version` to check it’s good.
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
   You should see `Dockerfile` and maybe a `greeting.sh` if I used one.

If you don’t wanna use Git, just download the ZIP from GitHub and unzip it.

### Building the Image

Run this in the folder with the `Dockerfile`:
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
  docker run -e GREETING_NAME=Alice hello-app:advanced
  ```

If the container keeps running, stop it like this:
```bash
docker ps
docker stop <container-id>
```

### What’s in the Dockerfile

- Starts with `alpine:latest` for a super small image.
- Sets up a script or command to print “Hello, $GREETING_NAME!”.
- Defaults to `World` if you don’t set `GREETING_NAME`.

### If Shit Hits the Fan

- **Build fails**: Make sure Docker’s running (`sudo systemctl start docker`) and you’re in the `docker-greeting-app` folder.
- **No output**: Check the container logs with `docker logs <container-id>`.
- **Permission errors**: Add yourself to the Docker group (`sudo usermod -aG docker $USER`, then log out and back in).

### License

MIT License, so feel free to mess with it.
