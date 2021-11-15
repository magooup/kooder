FROM registry.cn-hangzhou.aliyuncs.com/devops_hu/maven:3.8.3-ibmjava-alpine

ARG USER_HOME_DIR="/root"

WORKDIR ${USER_HOME_DIR}

COPY . .

RUN chmod 755 ${USER_HOME_DIR}/bin/*.sh \
    && cd $USER_HOME_DIR \
    && mvn install \
    && rm -rf /tmp/* /var/cache/apk/*

EXPOSE 8080

CMD ["/root/bin/gatewaydocker.sh"]
