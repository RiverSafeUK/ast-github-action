#Use AST Base image
FROM checkmarx/ast-cli:2.1.2

USER root

#Copy the entrypoint scriptand properties used for the action
COPY cleanup.sh /app/cleanup.sh
COPY entrypoint.sh /app/entrypoint.sh


RUN chmod +x /app/entrypoint.sh \
    && chmod +x /app/cleanup.sh
