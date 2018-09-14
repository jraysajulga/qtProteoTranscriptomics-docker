# Galaxy | Quantitative Proteo Transcriptomics Demonstration
#
# VERSION 1.0

FROM bgruening/galaxy-sequence-tools:17.09

MAINTAINER Ray W. Sajulga Jr., rsajulga@umn.edu

ENV GALAXY_CONFIG_BRAND="[QuanTP Demo]"

WORKDIR /galaxy-central

# Adds tool definitions to the container
ADD my_tool_list.yml $GALAXY_ROOT/tools.yaml

# Installs the defined tools
RUN install-tools $GALAXY_ROOT/tools.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs --yes > /dev/null && \
    rm /export/galaxy-central/ -rf && \
    mkdir -p $GALAXY_HOME/workflows

# Adds the yaml file containing the data library information
ADD library_data.yaml $GALAXY_ROOT/library_data.yaml

# Adds the workflow to the docker image
#ADD ./workflows/* $GALAXY_HOME/workflows/

# Container Style
# ADD homepage/welcome.html /export/


ENV GALAXY_CONFIG_TOOL_PATH=/galaxy-central/tools/

RUN startup_lite && \
    galaxy-wait && \
    setup-data-libraries -i $GALAXY_ROOT/library_data.yaml -g http://localhost:8080 -u $GALAXY_DEFAULT_ADMIN_USER -p $GALAXY_DEFAULT_ADMIN_PASSWORD
