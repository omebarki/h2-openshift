#!/usr/bin/env bash
[[ -n "${TCP_PORT}" ]] || TCP_PORT=9092
[[ -n "${WEB_PORT}" ]] || WEB_PORT=8082

java -Xmx128M -cp /app/lib/h2-@h2.version@.jar org.h2.tools.Server \
     -webAllowOthers -tcpAllowOthers -ifNotExists \
     -tcpPort ${TCP_PORT} -webPort ${WEB_PORT} -baseDir /app/data/h2