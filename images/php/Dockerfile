FROM webdevops/php-apache-dev:7.2

RUN apt-get update && apt-get install -y \
    mc \
    vim \
    msmtp \
    && apt-get autoremove -y -f \
    && apt-get clean -y

RUN docker-service enable postfix
#RUN echo "/usr/bin/msmtp -t" >> /opt/docker/etc/php/php.ini
#RUN echo "mailhub=m_mail:25\nUseTLS=NO\nFromLineOverride=YES" > /etc/msmtprc

ADD php.ini /usr/local/etc/php/conf.d/custom.ini
