FROM openjdk:8-slim

RUN apt-get update && apt-get install -y curl

RUN groupadd -g 1900 vdx \
    && useradd -u 1900 -g vdx -s /sbin/nologin vdx

RUN curl -sSL https://github.com/usgs/vsc-vdx/releases/download/v3.6.4/vdx-bin.tar.gz | tar -v -C /opt -xz
RUN chown -R vdx:vdx /opt/vdx

WORKDIR /opt/vdx
USER vdx
EXPOSE 16050

CMD java $JAVA_OPTS -cp lib/vdx.jar gov.usgs.volcanoes.vdx.server.VDX --noinput
