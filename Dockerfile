FROM node:13.13.0

RUN yarn add @mermaid-js/mermaid-cli

WORKDIR /mmdc
COPY . /mmdc

ENV ENTRYPOINT_PATH /mmdc

ENTRYPOINT [ "/mmdc/entrypoint.sh" ]
CMD [ "--help" ]
