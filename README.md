# NUWE-Zurich-Cloud-Hackathon
This repository contains all the files needed to start the on site phase of the NUWE x Zurich Cloud Challenge.

# Report

## credentials to Jenkins
### Admin
Login: NuweBarcelonaHackathonAdmin \
Password: AdminTest123

## Jenkins authentication token
13f6e94c-69a9-4640-afab-2899863966d6

## Installed plugins in Jenkins
Git, Docker, Docker Pipeline, Terraform

## Created a job in Jenkins (validate-and-build)
## Connected jenkins job to Gogs repository

## Added LOCAL_NETWORK_ALLOWLIST = * to app.ini for gogs

## Added webhook to Gogs
http://172.21.0.3:3000/gogs-webhooks/?job=

## Added priviiliged mode to jenkins docker compose definition
