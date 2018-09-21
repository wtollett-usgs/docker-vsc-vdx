## Description
---
Dockerfile used by hub.docker.com to create a container for the [vsc-vdx](https://github.com/usgs/vsc-vdx) project.

## Usage
---
Java options can be passed via a JAVA_OPTS environment variable. The following volumes must be passed in when starting the container:
1. /opt/vdx/VDX.config
2. /opt/vdx/vdxSources.config

See the main vsc-vdx source repo for a description and sample of those files.

Additionally, if you want to capture the log file outside of the container, add a volume at /opt/vdx/log