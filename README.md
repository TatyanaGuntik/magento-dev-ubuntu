# magento-dev
clean magento-dev for Ubuntu without sinc & elastic
./toolbox.sh up ~/magentoWorkspace/magentoFirst

phpmyadm http://local.domain.com:8080/

composer remove magento/magento2-functional-testing-framework

php bin/magento setup:install \
--admin-firstname=John \
--admin-lastname=Doe \
--admin-email=johndoe@example.com \
--admin-user=admin \
--admin-password='SomePassword123' \
--base-url=https://local.domain.com \
--base-url-secure=https://local.domain.com \
--backend-frontname=admin \
--db-host=m_mysql \
--db-name=magento \
--db-user=root \
--db-password=root \
--use-rewrites=1 \
--language=en_US \
--currency=USD \
--timezone=America/New_York \
--use-secure-admin=1 \
--admin-use-security-key=1 \
--session-save=files

