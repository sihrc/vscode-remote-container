# VSCode: Remote Container via Forwarded SSH Port

## Getting Started

1. Clone this repository
2. Add any Python3 dependencies you'd like to the requirements.txt
3. Run `docker-compose up --build -d`
4. Make sure the Host machine port 2222 is open.
5. In VSCode, use remote ssh extension to connect to this container at port 2222 of the Host machine

### Tips
You can create an entry in your ~/.ssh/config option or through VSCode's `Add a Host` option to add this container so its easily accessible in the future.

```bash
Host <insertname>-container
    Hostname <insert IP>
    User <user on the host you ran docker-compose on>
    IdentityFile <absolute path to your identity file>
    Port 2222
```

### Note
1. The container will inherit the Host user's SSH authorized keys, so as long as you have SSH access to the Host machine, you will have access to the container server.
2. Once the container is running, it will provide a ~/vscode-server-projects volume mount, so projects and files you create and save here will be available on the host machine as well.
3. You can use `scp` at port 2222 to copy files in and out of the container directly as well

