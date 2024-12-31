#!/bin/bash

# Install SPC gateway stuff
cd /tmp

tar -zxf /config/spc-web-gateway-ubuntu_x86_64_18_04.1.5.tar.gz

adduser --system spc
cd spc-web-gateway-1.5

echo "Installing SPC Web Gateway files"

INSTALL_DIR=/opt/spc-web-gateway

install -m 755 -p -d ${INSTALL_DIR}
install -m 755 -p spc-web-gateway ${INSTALL_DIR}
install -m 644 -p config.xml ${INSTALL_DIR}
install -m 644 -p SPC_WEB_GATEWAY_EULA.txt ${INSTALL_DIR}
install -m 644 -p VERSION ${INSTALL_DIR}

install -m 755 -p -d ${INSTALL_DIR}/auth
install -m 644 -p auth/edp_key ${INSTALL_DIR}/auth
install -m 644 -p auth/passwd_get ${INSTALL_DIR}/auth
install -m 644 -p auth/passwd_put ${INSTALL_DIR}/auth
install -m 644 -p auth/passwd_ws ${INSTALL_DIR}/auth
install -m 644 -p auth/ssl_certificate.pem ${INSTALL_DIR}/auth
install -m 644 -p auth/license ${INSTALL_DIR}/auth

install -m 755 -p -d ${INSTALL_DIR}/www
install -m 644 -p www/index.html ${INSTALL_DIR}/www
