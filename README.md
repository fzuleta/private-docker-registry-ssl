# Easy setup for private Docker repository with Let's Encrypt SSL, Steps:
Make sure you have a domain name, ssh access to an instance.
This works well under a DigitalOcean's Ubuntu with Docker and docker-compose installed.

## Steps

1. Set in `docker-compose.yml` the **REGISTRY_USER, REGISTRY_PASSWORD and DOMAIN** on the nginx args. (tip. avoid `=` on values)
2. On `ssl_gen` set **DOMAIN** value with your domain.
2. `docker-compose up -d`
3. `chmod +x *.sh`
4. `./ssl_gen.sh`  
4. After it succeeds > `docker-compose restart`

## After it succeeds:
1. From your local machine (or another) add your repo url to the `insecure-registries` (instructions: https://docs.docker.com/registry/insecure/)
2. `docker login my-repo-url.com` give your user name/pass
3. It should say `Login Succeeded`

# Automatic cron setup
This will schedule every 15 days a renewal of the ssl cert. with Let's Encrypt.
1. `crontab -u $USER -e`
2. `0 0 */15 * *  /path/to/registry_files/ssl_renew.sh`

### Need to install Docker in your VPS machine?
https://docs.docker.com/install/linux/docker-ce/ubuntu/

https://docs.docker.com/compose/install/

#
### Be sure to donate to **letsencrypt.org** !


