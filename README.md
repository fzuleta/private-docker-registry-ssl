# Easy setup for private docker repository, Steps:
Make sure you have a domain name, ssh access.


### this works well undera VPS (digitalocean ubuntu with docker and docker-compose installed)
use my digitalocean referal: https://m.do.co/c/66153854bc56

## Steps

1. in `docker-compose.yml` set the **REGISTRY_USER, REGISTRY_PASSWORD and DOMAIN** on the nginx args. (tip. avoid `=` on values)
2. on `ssl_gen` set **DOMAIN** value with your domain.
2. `docker-compose up -d`
3. `chmod +x *.sh`
4. `./ssl_gen.sh`  
4. if it succeds > `docker-compose restart`


# automatic cron setup
this will schedule every 15 days a renewal of the ssl cert. with let's encrypt.
1. crontab -u $USER -e
2. `0 0 */15 * *  /path/to/registry_files/ssl_renew.sh`

### need to install docker in your VPS machine?
https://docs.docker.com/compose/install/
https://docs.docker.com/compose/install/

#
### Be sure to donate to **letsencrypt.org** !


