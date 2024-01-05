

![Screen Recording 2023-12-31 at 11 00 47 AM](https://github.com/hacktivist123/devops-project.top/assets/26572907/316bb10f-0235-4ac1-84a1-aa63948be4fe)


This website runs inside its own Docker container, behind a Traefik reverse proxy with a Docker provider, with an automatic TLS certificate from Let's Encrypt, deployed via GitLab CI/CD, to a server managed with Ansible.

The idea is to build a Linux-based infrastructure with cheap and open source tools.

Tools involved:
- [Linode](linode.com) VPS with 4 CPU Cores, 8GB of RAM, 160GB of storage and an additional 40GB volume for storage

  <img width="1384" alt="Screenshot 2023-12-31 at 11 39 51 AM" src="https://github.com/hacktivist123/devops-project.top/assets/26572907/9d606262-4e9a-4aab-b2c5-8e9eaab85204">


- Arch Linux as the OS of the server

  ![Screenshot 2023-12-31 at 11 44 16 AM](https://github.com/hacktivist123/devops-project.top/assets/26572907/84a32ee1-3342-419f-9331-a342bbb31822)


- Ansible for managing the server

- Certbot and Let's Encrypt for TLS certificates

- WireGuard for VPN

  <img width="909" alt="Screenshot 2023-12-31 at 11 35 34 AM" src="https://github.com/hacktivist123/devops-project.top/assets/26572907/4b6b0f00-bdec-4eff-914f-fdb66eec731e">

- Docker for container orchestration

- MariaDB for database

- LXC (Linux Container) for containers

- iRedMail for the mail server

  <img width="1399" alt="Screenshot 2023-12-31 at 11 22 01 AM" src="https://github.com/hacktivist123/devops-project.top/assets/26572907/22428084-a047-4e2c-9895-ce02d0bcf45e">

- Zulip as the communication tool

  <img width="1396" alt="Screenshot 2023-12-31 at 11 27 09 AM" src="https://github.com/hacktivist123/devops-project.top/assets/26572907/501d8682-a471-4d54-81ee-26884e2c61f8">

- Traefik for reverse proxy

  <img width="1395" alt="Screenshot 2023-12-31 at 11 11 24 AM" src="https://github.com/hacktivist123/devops-project.top/assets/26572907/8606f80d-0414-492e-81c3-cbe678d80b5a">

- Pi-Hole for ads blocking

- Nextcloud for file sharing and Collaboration

  <img width="1394" alt="Screenshot 2023-12-31 at 11 32 38 AM" src="https://github.com/hacktivist123/devops-project.top/assets/26572907/2dea28ac-9074-4d55-826c-e95ca6113471">

- checkmk for monitoring

  <img width="1396" alt="Screenshot 2023-12-31 at 11 13 34 AM" src="https://github.com/hacktivist123/devops-project.top/assets/26572907/75baba12-ef83-44b9-8178-09946bd235a4">

- Borg & Borgmatic for file compression

- Gitlab for code repository and CI/CD

  <img width="1440" alt="Screenshot 2023-12-31 at 8 51 04 AM" src="https://github.com/hacktivist123/devops-project.top/assets/26572907/63c7c740-834a-462b-9205-b5275044f4fe">

_PS: Check the top level `.gitignore` file for the missing files that can't be added to this repo due to security reasons_
