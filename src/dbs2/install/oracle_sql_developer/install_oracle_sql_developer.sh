#!/usr/bin/env bash
set -ex

mkdir /opt/sqldeveloper
chown -R mki.mki /opt/sqldeveloper

# Desktop Icon
cp $INST_SCRIPTS/oracle_sql_developer/sqldeveloper.desktop /usr/share/applications/
cp /usr/share/applications/sqldeveloper.desktop $HOME/Desktop/
chmod +x $HOME/Desktop/sqldeveloper.desktop
