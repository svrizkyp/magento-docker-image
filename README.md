Just cd into directory and run:

docker-compose up -d

to stop:

docker-compose down

Composer Downgrade :
sudo composer self-update --1

Composer error memory :
COMPOSER_MEMORY_LIMIT=-1 "composer command"

Mysql Info :

port : 8080

adminerr

user : root | pass : example

Elastic search :
port : 9200

Magento command :
php -dmemory_limit=5G bin/magento setup:upgrade && php -dmemory_limit=5G bin/magento setup:di:compile && php -dmemory_limit=5G bin/magento setup:static-content:deploy -f && php -dmemory_limit=5G bin/magento indexer:reindex && php -dmemory_limit=5G bin/magento cache:clean && php -dmemory_limit=5G bin/magento cache:flush

Enter Bash Command :
sudo docker exec -it php-docker-simple_php_1 bash

SVRizkyP
