FROM tkp/base/centos:centos7

# MAINTAINER WuBo <wubo19842008@gmail.com>

ENV TZ=Asia/Shanghai LANG=en_US.utf8
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["/bin/bash"]
