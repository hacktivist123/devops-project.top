#!/usr/bin/env bash

set -x

certbot certonly \
    --quiet \
    --agree-tos \
    --email akintayoshedrack@gmail.com \
    --dns-linode \
    --dns-linode-credentials /root/certbot/credentials.ini \
    --dns-linode-propagation-seconds 1000 \
    --domain '*.devops-project.top'

# if you need multiple domains in iRedMail
# uncomment the section below and adjust '--domain' .
# You need separate TLS certificates for multiple domains in iRedMail
# because Postfix/Dovecot can't handle wildcard TLS certificates easily

# In LXC config for iRedMail you will then mount the
# 'mails-combined' TLS certificate and adjust
# Postfix/Dovecot config accordingly.

# certbot certonly \
#     --quiet \
#     --agree-tos \
#     --email <EMAIL> \
#     --authenticator dns-linode \
#     --dns-linode-credentials /root/certbot/credentials.ini \
#     --dns-linode-propagation-seconds 1000 \
#     --domain 'mail.$domain1' \
#     --domain 'mail.$domain2' \
#     --domain 'mail.$domain3'
#     --cert-name 'mails-combined'
