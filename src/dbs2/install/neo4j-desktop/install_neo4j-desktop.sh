#!/usr/bin/env bash
set -ex

#unzip $INST_SCRIPTS/neo4j-desktop/neo4j-desktop.zip -d /opt/
mkdir /opt/neo4j-desktop
chown -R mki.mki /opt/neo4j-desktop

# Desktop Icon
cp $INST_SCRIPTS/neo4j-desktop/neo4j-desktop.desktop /usr/share/applications/
cp /usr/share/applications/neo4j-desktop.desktop $HOME/Desktop/
chmod +x $HOME/Desktop/neo4j-desktop.desktop