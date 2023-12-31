

![Screen Recording 2023-12-31 at 11 00 47 AM](https://github.com/hacktivist123/devops-project.top/assets/26572907/316bb10f-0235-4ac1-84a1-aa63948be4fe)


This website runs inside its own Docker container, behind a Traefik reverse proxy with a Docker provider, with an automatic TLS certificate from Let's Encrypt, deployed via GitLab CI/CD, to a server managed with Ansible. The idea is to build a Linux-based infrastructure with cheap and open source tools.

Tools involved:
- [Linode](linode.com) VPS with additional storage
- Arch Linux as the OS of the server
- Ansible for managing the server 
- Certbot and Let's Encrypt for TLS certificates
- WireGuard for VPN
- Docker for container orchestrating 
- MariaDB for database
- LXC (Linux Container) for containers
- iRedMail for the mail server
- Zulip as the communication tool
- Traefik for reverse proxy
- Pi-Hole for ads blocking
- Nextcloud for file sharing and Collaboration
- checkmk for monitoring
- Borg & Borgmatic for file compression 
- Gitlab for code repository and CI/CD
- Go

_PS: Check the top level `.gitignore` file for the missing files that can't be added to this repo due to security reasons_
