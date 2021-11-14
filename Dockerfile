#
# 优化精简镜像体积，比之前的小一半
#
FROM registry.cn-hangzhou.aliyuncs.com/devops_hu/maven:3.5.2 as build

ARG USER_HOME_DIR="/root"

WORKDIR ${USER_HOME_DIR}

COPY . .

RUN chmod 755 ${USER_HOME_DIR}/bin/*.sh \
    && cd $USER_HOME_DIR \
    && mvn install \
    && rm -rf /tmp/* /var/cache/apk/*


## 使用官方最精简jre镜像
FROM amd64/openjdk:11-jre-slim

maintainer 红薯 <winter.lau@163.com> \
      name="kooder" \
      version="1.0.beta4" \
      description="Kooder is an open source code search project" \
      homepage="https://gitee.com/koode/kooder.git"

## 将应用发布到opt下,将部署路径修改为/opt/kooder,
ARG USER_HOME_DIR="/opt/kooder"

WORKDIR ${USER_HOME_DIR}

RUN mkdir -p ${USER_HOME_DIR}
## 只将有用的文件复制过来
COPY --from=build /root/bin ${USER_HOME_DIR}/bin
COPY --from=build /root/lib ${USER_HOME_DIR}/lib
COPY --from=build /root/kooder.properties ${USER_HOME_DIR}/kooder.properties
COPY --from=build /root/gateway/target/classes ${USER_HOME_DIR}/gateway/target/classes
## 启动文件修改一下路径地址，不影响原代码
RUN sed -i 's/root/opt\/kooder/g' ${USER_HOME_DIR}/bin/gatewaydocker.sh

EXPOSE 8080

CMD ["/opt/kooder/bin/gatewaydocker.sh"]
