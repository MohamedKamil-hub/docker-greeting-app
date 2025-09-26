# docker-greeting-app

the project idea is  from 

https://roadmap.sh/projects/basic-dockerfile 

just a simple Docker project that demonstrates how to create a custom image based on Alpine Linux. The container greets with a customizable message.

## Project Goals

This project was built as a learning exercise to understand the fundamentals of creating a `Dockerfile`. The goals were:
- To create a Dockerfile using `alpine:latest` as the base image.
- To have the container print "Hello, [name]!" to the console upon execution.
- To implement an advanced feature allowing the greeting name to be customized at runtime.

## Getting Started

### Prerequisites
- Docker (or Podman configured to use the `docker` CLI command) must be installed on your system.

### Getting the Code

If you have found this project in a Git repository (like GitHub), you can get the code onto your local machine using `git clone`.

1.  **Copy the repository URL.**
2.  **Open your terminal** and run the following command, replacing `<repository-url>` with the actual URL:

    ```bash
    git clone <repository-url>
    ```
3.  **Navigate into the project directory:**

    ```bash
    cd <name-of-the-project-directory>
    ```
